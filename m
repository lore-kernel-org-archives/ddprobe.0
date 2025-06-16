Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375C02C08C2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750073395; cv=none; b=dmHSC6FMNavQqAAhT/xIttJ5/SHlg3Jb/oNbe00jdanXiTyj09iY+TbNwkOWuoNbFNbonFdsLHtx7FP47wmtu/31z/vK9zUXdf0gYEFI4G3NIRIVApWq4myGL3KDfNbMyO2TNSuDaF25rd/QLsFxNBLjWOUagwzl8Bm/Pemk/Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750073395; c=relaxed/simple;
	bh=ZYWfn3YI01rKB9604yeMs/Z6EQcTp6eUvVvnhKOKChc=;
	h=To:Subject:From:Message-Id:Date; b=g+i/5kmrMbQxDwpyqnCLOjKEGif9jlYkk3n0gxTcE3eLgrChtcODKwltRmDX/0Tx4GIw6Cnbye0RoBvOPX4DiYVU7BlivtvccB+70jceVSKbrCLmQWMbJ+6nKgmukHJJZJ2IIIsGbUREPbSYqW+BhXDWtHF4qk5EagEMGHBzOOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oul3grwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oul3grwV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFFDCC4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750073393;
	bh=ZYWfn3YI01rKB9604yeMs/Z6EQcTp6eUvVvnhKOKChc=;
	h=To:Subject:From:Date:From;
	b=Oul3grwVy8Pa9/HnGC0tuWG2gxGALqMsDJRghlV2Lui9O8wTcWciqRgEMU3sriBLf
	 Bx0AudAZlUSwZoxcM9Of+SnGnOYEuiC/YCvxlyYjkzupTcLnKu2FAe7qnXZNm0/gNm
	 sKQCX9EcltKFpzeDWDcb7vYEjwM9dQcHER8HEXIx7sBgMcWs508PaAMQu5wLRYlHw0
	 BMcXq2fGaQb7wH11uj6UJQVwSyReIY2/a6moYWbm8hw6jZHOfGVh7glBXnCV6d+Uvi
	 TRLWQMO+s7WPlRrhiIdZhd6DqAkkN7t6Z7DzxeO7ED7y0okppKyIa3oHxhGkbYK+0r
	 MvC0ljii6UeSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED2BC71155
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175007339363.10699.4339619949282752780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe9dec8d9edb5f23a576907f9df1616dbcec06ce4f2ee67ef8e6193ac81a8d08
Date: Mon, 16 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750073393
