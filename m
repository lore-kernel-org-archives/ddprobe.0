Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571E6254B10
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747081194; cv=none; b=saInRaj9SbFOh3oP+6EP+/H/p4vNaZbYgRVi61mPhLE1+YIcpuxUwzL0ihwqPPGymAo0CRR7I/wri5HZf8GZ0nSaQxEDQveYieNLZ/ymrzYp4Sxtn/tSxj1nreUGlvkyrGOtwI9iXbZJq/0wB1ruU5ta/H12WKE+h+Nud2vMNbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747081194; c=relaxed/simple;
	bh=YzAYt7UCpNV7LlXVr/PojllJyJI3aGvEtz18XuJLSC4=;
	h=To:Subject:From:Message-Id:Date; b=KFnDfRDXjp4ZEx3NytFVy+oNTndSKOsNFQUk2U61bZVIfmpF2oLfzJ3Ld+3+k7jwQe25ddwr7SKPxZxiHy1FC5/Uo602Hzin7KWBnTQRRC2YotIHVZWHOFTYYPx8jaqDATNbyDngMOqc2eoZ3BsRpoMPqSa7owMp9buI9cqpg3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqDw+vsV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqDw+vsV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA47CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747081193;
	bh=YzAYt7UCpNV7LlXVr/PojllJyJI3aGvEtz18XuJLSC4=;
	h=To:Subject:From:Date:From;
	b=iqDw+vsVXdpi7SVdQip7wVRNpebds0bkZRAO0CchIRlIzY/+xn2bkIN9URQBOyYlF
	 hOKelkwSuRSYi/O+u+1MqEtVUs+fCneeWJYOf+8Iqg12HDz0pNmNI8o1ArXJE7prNA
	 PJ5VAn2tW+gDZbklPuy2XEyFg1hmchfQNEgDz09zf0mMnJbEsZkN96lYSYv9T8YnHQ
	 +ey/Vn3ReCxRP5tFIpfwCu9RXMMuqA8CmTerrq0PpuvZrzQbnIEHs6yWJs+RCIbbUp
	 H7k2T/fPKzWomhoQiUAWrTrDE04TVTdUkRuUFUKnLud0YAlBAI5AFrK6XpPc9Aiu+q
	 8MPR3qfsdWIjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F569C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174708119358.28850.524151666313492422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 431492cc6aadcf79a4e385aee75169a3c46ee9664cee327c3d0c42fe11429ce1
Date: Mon, 12 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747081193
