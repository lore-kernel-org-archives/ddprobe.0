Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E25E3C140C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773417894; cv=none; b=AW2WdZOvIox1edaYiD46osPoO0qQKRJLLmTB8NpeyNoVCuYgWNgufBLlMxJVcoc1ohpJsIZc5xqobbbLF9WZcrej32RY6d1ki9MmEUXCjU/1tgOz61ZvEV3urlzpoCAxfGUA80fE5yhDp5sQK3GVCXR5528+hEAlpiL3kdCoU+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773417894; c=relaxed/simple;
	bh=wlu2iNurzDlgwzlre9r7rh78hLjv1VAwwwUlOMSs2dw=;
	h=To:Subject:From:Message-Id:Date; b=up5L+TmBwwj//TWECdgFQ/8N52CDqKaYEn8JwcavABQP9cetbGBlnlc4gXuPelRcbtUaxn/qoOMGLvXyfEwsr5kHdDh3pFWU2wpkhTzzPJGV0Y6ZhJlgIktU5XyTsgfTI4ric72u+RAthzzTTmcLoDmOubaOWCp9D3fiw9cfaoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWoYjKR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWoYjKR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4EFC19425
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773417893;
	bh=wlu2iNurzDlgwzlre9r7rh78hLjv1VAwwwUlOMSs2dw=;
	h=To:Subject:From:Date:From;
	b=MWoYjKR63FjgCxBreOEP8ptK/i2roPGKbQrfzdehfEfcPqZUdDgFh+Lz5DWjiOc44
	 AvCj+9fbecNrnmh3XSypQGWSU1v7VcR//Qf1/VFV+3w7PbEoIzPQoTRCpUpYc5GoYq
	 fA9RAUYFG74aF8YOw53q7u9DGXIKJn53tV6RritHkxbEuNDpAy89gt+VietNXwEQ5t
	 HAMMg6C78b1zGABVnYEVwZ6HBvnGyUHIrYw81XxoX6LQti0Wa/UaYJVSXL2A1k78oc
	 Q7xMGkwzrFNrxonoKhSlZWGO+fcINmfvrltno+WMJBIBbnhMg7L7bCPfu1GTw7LDaF
	 ZdwIdg8gTtE2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905E1107BCC8
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177341789358.26233.13124772363277582053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b32fb9fc92c3e9cb7f01c548cbcb25887bfab00e1c17939efb9c60eb5afc7e07
Date: Fri, 13 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773417893
