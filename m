Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F68328468B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763405515; cv=none; b=Hi1sxvJMrmeMjRCirhIjoBgBFZ8z87ggSPTOkMoy9pd3txUtaAq8QEEZ1FPHT0bVi4Ggn9BOPd/XxOHM1kiPMhx0K/y6S/xe8TpxI24BBkbnGmVjw6SB8KHuOLeIhaldJsq3s1kYT12Yby+HluUx+ftUHqzzRUQR93BcW+v1xsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763405515; c=relaxed/simple;
	bh=d5QzaoBj1zKhUqje5+VAr5sS9ITCzSUZFklSuXau/rs=;
	h=To:Subject:From:Message-Id:Date; b=FDteXANbBCIfnJVJUa94JMF0xFzv2uaPJh2JD/9+fgJ5WQXO6eFiZWn0IsgK5AJ8oaByjlHafrNnrIvMFjB0/e3ejCxP3jhoBz63An8KTWoqaiMhV6IGZMhkrLHlJub75TBpsOTime6DxhwME60MaMmje/PTtFI45OJIjuQAi7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tv0IVchP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tv0IVchP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8987C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763405513;
	bh=d5QzaoBj1zKhUqje5+VAr5sS9ITCzSUZFklSuXau/rs=;
	h=To:Subject:From:Date:From;
	b=Tv0IVchP16SnxsSaiVG7IXYsJ3a5qReckiTv5n9fBzDs1V+q3T0QK9I9lEa/9sWTM
	 VvJEFe5S/O1/LnCl+FDgAezZ14Nbzrz3KD5jxBpx9k9wmBEIN47JXjsJNQQFclMNPQ
	 HUxVx1TQH5qVUMiOuKzOhc/tkDn8wGgnGcKH68QvUpg4s+X7563551yZrEojVy+0Hk
	 jZ7h5sNFUQIh5kPzv2fE+d+CJHvcIgz9aef3fobTbYUVBv1CYmMc5D8lgmQC5lKlAV
	 cRaTDINdFiUQnBjP7xTLi4d8+s0Tqx2TKbYQAO1kBzk5XLlTnwx5TjhCVuh/UAHwkg
	 JQVUIak9eqYgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908A4CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176340551358.4785.17809703007436086106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7633b0966f1d2ace07abd9e50c23844e9058655c74f701b4d6db064ec0323737
Date: Mon, 17 Nov 2025 18:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763405513
