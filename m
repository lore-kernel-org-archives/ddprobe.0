Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7982DCBE3
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765218773; cv=none; b=NQJqU3sxYFJ7J0jn4sIkhLyPGmoY2ljY8zNmAdVYbpzhHOVgje8bihX5KrWgV4lOGyREV50ILgpuiJsESx54dfAo2YNdyEtnaYoEBh3v7l+eJuMIO9lgq2SR7C+fKzJ6mQh2bzGGv2X2qViF68FAvYAUC/c0bTCYn3y/UV24guo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765218773; c=relaxed/simple;
	bh=uhDI8Zi1mEmHRMzviNl0ifVwQZ7rxGbm+la9rv44gkw=;
	h=To:Subject:From:Message-Id:Date; b=id3FMORaVW3+PD1A5Tl2vKk1ptarpzvO+eGAdJ6NAMln4YX8CA4kwSretbR2z6PU09fJwDjRGzbhxXVeca3iiFPWPdDzrCEeMdrnVB0j6TTA/kdj401S+N7LnA43SQ6ulgtf1vGx+s6DhVhfA9q+jTizf/XkaSVyA8RKTCf18T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqS+NifO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqS+NifO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3763C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765218773;
	bh=uhDI8Zi1mEmHRMzviNl0ifVwQZ7rxGbm+la9rv44gkw=;
	h=To:Subject:From:Date:From;
	b=iqS+NifOpA8KLXW32L3odtB8I+BwNh5rDiTQQt/5q96JafKZUfjHO8wKhX2LrpUM6
	 RddLkx3qxqqBTtvlV8Vn83yPzjEIvqRP6l04alqRb4mmkMtOAtYepj8IEow9gyForu
	 vdYeIO9b9aV/299yLVA4fTlVswvada63yc7twbEql/7ckBbKAhS52vUXpxn6R4Rq1Z
	 9S00cFz6bJTROKX4I/BhEWyLsfSgoHnXM4DCCIvk9GwPxx15pWiCV5JY6AaeH22xXA
	 5PigijOqjsIk8HCLTkwNh40qTxvkM7rnlhUgLs/YjxC4h9tpzQZcXt745HShiIYTZc
	 iQfOEJ25r3X6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D6D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176521877358.15049.17453524847500028924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde246040b85c3768f07ffc33552f02f4fc648b9feda3d214912b6be891648ca
Date: Mon, 08 Dec 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765218773
