Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5271FBE80
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 06:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741849135; cv=none; b=dFSFsXX3c+kxxU5Qri3t/FAJCsCi2Kj5KJyU+HPn/nTNgFbYJJn0BAlNWya+hYEU1LdIx6dQ3Pf6M4fGogzyHRbLNgL7S0jydos/TWmBwD8gVYumhsdluq+S/+Ep9jspd5o4nxhbQL9SlP9ilR0YS3K5S8cKM2Ct9vAqF4ahqDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741849135; c=relaxed/simple;
	bh=M6fKiWYkmYJ3a0Et8klMKCdMFVaJDzIlR7x0+usDALI=;
	h=To:Subject:From:Message-Id:Date; b=aKeOcvV8dRWG3foYIbvZljdfcaQK2yYA39ynifhKIo2XnyfLNbjRoidKQR9udsAZcVF7a0e0xXD4nTjFm1mEYRTa/0yy1GXlcdhNTTCz3n3tp7QEJTHo10F1OVUUemMBB+a6OUGW27YFhOeCdZBnMfauqZrZZh3Jbv2+4c0c44A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrowISN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrowISN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB580C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 06:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741849133;
	bh=M6fKiWYkmYJ3a0Et8klMKCdMFVaJDzIlR7x0+usDALI=;
	h=To:Subject:From:Date:From;
	b=jrowISN6O0nGE5PABPn5ZgA4ZIB+PcA25ZBHDbjoN1hrCazGF6CF8r7YxXGOxBos/
	 DMTHJmpdrcWsQRTWptCD9DZ7Qyn74YsYGehciQnKX1MPZsBeYOMKzWr1dYuylaQKRy
	 dCh6mgmqhJ4VwpC1NUpqOhlxuuF2X2tyq7hJVnHWy55T/PALrFWcImtokaNzCk090Q
	 dcc/st70TnoriLPODuMpda/6X4t8b6UvCZFw9OJ7Xkfjj73UDqD7G6nhzi1/1TC4gT
	 yn+QYQEDvHjWAo1hhPVpovj40Fl6UcWACMc2sT893tnucUIOE3foc33k8CREXSA+sO
	 ALn65qQT3sXdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D9CC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 06:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174184913365.14307.4250159073493188237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba7f9172a0744931d9822a0582337601829f4e530dc8aab6cbcb3b6cfcd1e20
Date: Thu, 13 Mar 2025 06:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741849133
