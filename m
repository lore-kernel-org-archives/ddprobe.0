Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A90D51C
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742741994; cv=none; b=V7vn+nsPOLVHqURWKJXtelsGjgQ5zIBb18MRnFgHxXaBEgaukFqQmcCalfXHA3w4CfdnBaf6wDdiXE4cZySWMp4V9c9p5i4AQ+kq8MCM06Nj7uaDWNzm7nEeQdKiBUCkk/FShc2W6MZx6eZ+aSJnj7Iqs7iu9moOybkQcaudstM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742741994; c=relaxed/simple;
	bh=MwVu2dGoOgGV9uBnqexgRpu1AkocHKzafZfWhSoEu+c=;
	h=To:Subject:From:Message-Id:Date; b=LYQwY9TCVpOCjY61KMyhiT/EeuizH1vHqbb8uMJzqEKvqTRP++YgL2dTjBaL/WYw1Ja7xcWsskcRdwOAX4/+3lasYjr9x5CrUhDOfXwqxGAViDekhgXfWuNJi2ZDxFhUUORQ7WyqCXnaLeovlzZLgVAlhMg55B65peQ2Q2/vQ3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gi4GGhft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gi4GGhft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C1BC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742741993;
	bh=MwVu2dGoOgGV9uBnqexgRpu1AkocHKzafZfWhSoEu+c=;
	h=To:Subject:From:Date:From;
	b=gi4GGhft1EMwqW4YqXU5CBdstS7pkQ+e/wYDi8iXtV3kBi89fedtj5j1i88n/leZ4
	 4GxGMlUtOib+FX8Q944UeUrygdXbkPE3sdW7vvkCvEqXG1rumRq8hsdS92YB7x+28o
	 Jk+spgrgrme7h+dKQwbnbngetciUabYm2EMlcxJ724hT/Ie67jsjBEZR6vUqgY+Ig6
	 eaCpUrQDUIqtkS/wUpwL/LxU7lCdl+9zcQ5IDlj88JtmhHZaRJi4SRnTE98y/5n8zO
	 SIoXQgbATNKKowSsKdoNOdob38haUAxZO9TeykY1bbdkaKkSChnqE7iwsl0kVO3Ibk
	 5JQBS50Tza91w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95D7C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174274199368.21999.1043524953885961200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba427961d425bc69578f7ef1113a68be5c99e4253cf4684fe1d33e397e900f3
Date: Sun, 23 Mar 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742741993
