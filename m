Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F511494D7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719315203; cv=none; b=ANZh3zIpyu3+4VxoIAx6qzM6lU7APg6bJBl0Cvrst8KE1YPRgwCud+qgzVUN854eSBkg5OrfSKzBP5Vu2on/+Frtpo4EY/+myWisZ6b5PTDE+CmDyM/mF6iQ+Kn1AfgQHthKi9KiVdKv2WO20j+KGoEJY2p0GeH4uwlh047QDIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719315203; c=relaxed/simple;
	bh=wmjrs2WxJM6CJPv8UuzQv4ewBXopIUIRdfIVYcFfo/Y=;
	h=To:Subject:From:Message-Id:Date; b=LKERu4gshR9C2mgjveL6tny2QTy2YvjsaAyKYeIff+owjO3JQfTB5SnjVFQslkTpgQZEAofKaUmL07zxhO/WRI6iuNwuRdfXItEq/Zzh3AM8fkoZrvCB9ScrK4DaNylu19X7NIp7clw5ed9hVp5yzL/1UlFtZXdcQBFi/euH9Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMU+ucY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMU+ucY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E09CC32786
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719315203;
	bh=wmjrs2WxJM6CJPv8UuzQv4ewBXopIUIRdfIVYcFfo/Y=;
	h=To:Subject:From:Date:From;
	b=UMU+ucY0E2a1pMX+IrFLY6zczVyGJ198lehxDQhnIMnbjV+klg3bKuwIdlwsiQzFd
	 5dZ/hMi1UWNKZKsWNnpYAQ8kej8lbKyyOPIES0KAn9krGFdeQvosUdOmRu4HnMY/de
	 dT8Q73VHDO0dvRyVMRILxmy2lj22ltFTF5GqK3rVNRqt8Ha+X/nvpfp0IcuFyTgeP2
	 9vM8aZH5XYyiXGgvfjlRasoOLQpg7zptE6nQeXAPAXEYvXaDek2q5hajHZ0bUOm/UW
	 VQupSu7WaoytHRZiYZ/xDzZEoOWJguSJfBEWTR+0LXrQmUTxqYZRb/V/+VLTTiT3W7
	 3rlvypmOf1pkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8556C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171931520283.25422.2773052912969022543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db4db817c9be128dade3fd567180b5465ded6a4aba78030db30d6c559b906b5
Date: Tue, 25 Jun 2024 11:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719315202
