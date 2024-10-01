Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8DB19ADBB
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727774754; cv=none; b=Kvd6gAFVVlnnKmnA9iV5Xedzymrn+v2HzqK/DMiujgyiEooeiEXh+6FSVbJgdD3pwzNn7rkCDdDAzaG1Z0q/FvoFxrkyYWIiqNCoYK+xYVcoCz9N58X00wiJuawyVqRfzrjRMInEwPLIe8cZVXBzLrpiHZLVJ6jfkVmnvRE6hsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727774754; c=relaxed/simple;
	bh=IuYRmUoqtNXmmPPgRbGiDJLgvhJEp0RgLQFv5jkvhgc=;
	h=To:Subject:From:Message-Id:Date; b=tLLoOx/q799gd4byD7AsYEc6oEbMDKnRku0cBmi5Z2x8RkntsV2GPKd1RJUkABUyoGIWhFeky9r1U1ZT/+4ysvr3G4ixgG/puj+xPapMCFBRyHO3I5Cmpqc40ovPl0dIYZeVcJNbz5uwPojgNyJbmhrVL44eEPQMgKDmM4P7+So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObQvOb2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObQvOb2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCFEC4CECD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727774753;
	bh=IuYRmUoqtNXmmPPgRbGiDJLgvhJEp0RgLQFv5jkvhgc=;
	h=To:Subject:From:Date:From;
	b=ObQvOb2N1DLcpPqldau3WJvOvN+MOHf2cIbP0NsB6oPIG254jC6UP1QgKceDAyVLR
	 v06wKwkIad5/eBjmrOItlpzrvux5PuP2p18o3ZKlpzF6RBbDjgWddPLHw/EDDAIMfM
	 k+VoaPMaNEd4e1apCgLpNXmHu6fG2z/jTO90M9lhK616VfTyN6J035QSt+pmJIauAe
	 2g/f7GUcYqxeZDiCL1JzaUmzmByu+DaUjBpVi42OLfM/yDH3DShYaXQDvMJgcQQU/s
	 rHKw08hXzpCfPNXdti93jTspC+Boredw/ckxnZ1zucLFE60ZfG9A7Suau16sr8UZ2X
	 Ioi11wXRyhl6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98389CE7CFB
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172777475361.22451.6375312412671565917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ba4d9a73ed935e0a40c6a7755dba030a75770903ecf52177ff92032499a180
Date: Tue, 01 Oct 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727774753
