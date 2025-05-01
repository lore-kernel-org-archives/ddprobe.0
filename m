Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393F120C461
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746077394; cv=none; b=rUfH2jnVBIMYw43J9OxhEmTM0VWkGcX+jUOXGzSEVSqllUQovMNTjei2tEezGTabYEMFxbk2XkMHH+sBj/X9MOxl2NhwEWbIOwl/XQU+10m4RHUYY/f1VL/9VWTEMa5E6XHSKa7l5Fkyo8JQBL962vZBL481rVhMeoNRMbSYyVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746077394; c=relaxed/simple;
	bh=E/DKswf9L/d5yfQ5mvrjwvnxxW/z5YfQt0KVIbHJQ9s=;
	h=To:Subject:From:Message-Id:Date; b=CJvsAXiaTMB9dNPmZWZFjsmwAhGBUr+ZVb/qK1YJdu7AThQh26oywa/ok2zzIXhunZ66FAPSpweyXsX2rk0FaL8covuq4zgriGmF0e5Qgv/TxD6GuOnTRhkTnTTIexfvIV62P9VkB645fFlWdiCn1+OPF/dAf+78bZPKI5J20ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lciZUXeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lciZUXeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C25C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746077393;
	bh=E/DKswf9L/d5yfQ5mvrjwvnxxW/z5YfQt0KVIbHJQ9s=;
	h=To:Subject:From:Date:From;
	b=lciZUXeE6MEHzUL564d2FJ6aMdwzq9pW99erVv77oebSgRWpnrsdBJaNkgo877zms
	 U9P4UDtkEoTNvuNaq6klhbut28Esey9MSklLd06RDjiY7EviRsu3bhqm8hzRvX1eRJ
	 9TzSdqFTUwYCOpxXBfZ9RGHF2NrAEE9hH/BEhNeRzrmFnILytxvnT1xPKy8EQK/uZD
	 OOcYaFVM+CnNVxC7ishcSjv+C6KqqoAAZHPBfRGO3wD9VYd8J7WPjy6eqT3aNo9Nl1
	 0YadVBqjYRnQfQ1VrSuxdCoEZxfWHGWuk5y385Mw+vTVWHNRW6EhN/l1IwaAIZuj8P
	 wyg/pcrsgp3wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8ECC3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174607739357.16350.3599074433232722676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2060615930a7dfde5e0775be060adfede6e057d60244e749d2292bb355761c6
Date: Thu, 01 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746077393
