Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362A13234
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746146395; cv=none; b=PymjYTGK6sm2bRNy+uczSEODEQngzeQwHXDTdpZHO5+L4gIN0GpEsEZ6z24FAQqNFpVsIaXrMGzu+gxuLAf/NZ/yeWkX1Do9b+j7xEksNwE5RNryA7eOWYvberTlQy7q2i0bb6cx0TQy5Uxj4/7wVSjtsJapepO15RaR+LpwwTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746146395; c=relaxed/simple;
	bh=SzTzIfvdD4nCx/PVHB6WuUXfyBQ3xY1WkxvRKeFqSQA=;
	h=To:Subject:From:Message-Id:Date; b=bcdffwy7nFKJus+9p3NFtX1sx1DehUUiSJp04SrAj+jyCmQUro+BpLG60tUCkpH6zR1IIjd5JvhZLZ2daqDzJauNi+9//OsOpixcuWQ+YcGy6eZNxjn9zcr0xy/TJGfdKgLCbl4x2oYHr1mLqA6/omu2gp4JM+4lQpOR0SyNn+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1abczWW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1abczWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EB9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746146393;
	bh=SzTzIfvdD4nCx/PVHB6WuUXfyBQ3xY1WkxvRKeFqSQA=;
	h=To:Subject:From:Date:From;
	b=V1abczWWFEPj0zKHBiNgJe99ZwUsuxps2AlEGzAso6pEN5ttJ3CZLqnLya9+9dcJN
	 9wGY4IESRWCb4SrxIBVHAWAjiD1P9JTa1LuRDfJUhJ2oMv+u8SspTK4MYgd8FYAnrD
	 4Ct5EfTIewAGQWLxi8UCfswLEtqENZIoIw2UnRxgoGRNUL6j0HmQQUclV56FEbtjz8
	 FzYlyPQB5bDktvycthe0KyxcB2IEiw2dyDJOZeTG/O8uW0Ep4mi74PpoKlc8X+Dte9
	 7C9sBFfVM7uMvpeDRmQK+I5Fb8Rhz/RiHdjaUY7iHDJj2CjiR0EI12PGk432MO3Mck
	 bOwCa+MSbzu4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94171C369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174614639358.3190.9853459230143369363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee1d03a2c8176826c08002b394504b8796deb2e56fe214e0c300b2f9141daa3
Date: Fri, 02 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746146393
