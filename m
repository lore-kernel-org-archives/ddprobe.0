Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DA4361675
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788746434; cv=none; b=dxZ9ZzLG3jlU2EURKOuiAkYuzGCr0CXNo6cLZ2Smk2GxxHR03G8DYvfLQOBB1dYxhrvfe0oF9oo4Hx+qRjW8W+R7fQu6WEnk+nb3H7GN/Y/MobwZ7jwGAY6HCOVQxth/vaZXRA8079mJDkb9rECcNIGPy/kET+1n25oFvM3cpdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788746434; c=relaxed/simple;
	bh=FPZqLOu6YEdELGwXfY3TlrRBpPlldOy16VsXxVzc82U=;
	h=To:Subject:From:Message-Id:Date; b=PWN1wqmN1GRZjzW17aTSBHNgVaC/Q4tYHZfrJb2hF6US5G4fR6BtGExyVcTsiXsRYBFilep89/MghIJjRpJjSNUvNb/e2v3D6xoOCiwKgQ/+YJuPTdsqRYO/g9Xf9qiZAVku+zWOFV6RDaMDFSysxZK0BpBnKTdLZXBAnajZGZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2spazZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2spazZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF533C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788746433;
	bh=FPZqLOu6YEdELGwXfY3TlrRBpPlldOy16VsXxVzc82U=;
	h=To:Subject:From:Date:From;
	b=s2spazZzpmAosiW2Cwg5JCNCsAydFg/wKHCa08o6M9rsUSR1dLn6tl1j3WAIpOYbc
	 2ETKc7LW1s+ug35LzMmousS49pqs8jUMbCUZYF/DSGGhYP4+zrBl+ZirVo6g/GPbLf
	 rcnVgrEALnNr22huPsHkm/UzZW05Og+d5N5Rz5TpMAelE57/uYFTOIUh7h7lzs+U8p
	 BRxr//GoUfrPz+r15FKAffVByxeHodPz4WPQCr4gu+601Zp5t/BAksRO0FVrWuvOn5
	 Qo77/xM6xqCvp3O9N4yPgZPxfwUqJpG8ZioCIhjNZZV1XWoYkatisQtYDAvrICjx/3
	 /oIOPphew9fEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC690C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178874643369.16816.6580450568351381768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17a7dda453b467411a268ce63ac3bbf926977df1c5f4bba27cc0ff6857e6a92f
Date: Mon, 07 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788746433
