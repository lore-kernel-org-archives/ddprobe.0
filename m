Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403153C0B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737722754; cv=none; b=kT+/a1xDgJvuOwOMSIYbmSs6MaW7ClmxDcS6q2kGgYB4HF3qNJq7D06S/elsKhn3ol+9ZFNHS+Xcv4XMru8lK/93mh/FfBHQU+XywI/g5kqlrhXG/hB8d8bVUbLKayU7LRHw/BZ3lidoksZnpvIPFC/8ahx/7pbRGhFC/DEGbpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737722754; c=relaxed/simple;
	bh=wxk9BbwTgfzFm5Icfz2YhOMXPljCpJ+M3xbx89BGw5Q=;
	h=To:Subject:From:Message-Id:Date; b=twNz+deF60SNI1emXHJEE/EjnUzqz0V/naFu+8P7KO22gfbG1604enPVys1VxWeK6ajdCuLDMOQtLoO2arIxl5pc/scKLsa3rtB7zx0UGXW0Ut4NhseZQqS6rJwh1EMjGkcjgzE1LkccpYAeeC2iY2tKqiIoyCr5EL3ZvqUnFAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pP40VkcV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pP40VkcV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC69FC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737722753;
	bh=wxk9BbwTgfzFm5Icfz2YhOMXPljCpJ+M3xbx89BGw5Q=;
	h=To:Subject:From:Date:From;
	b=pP40VkcVk8G3h0hVnTFtK5xhXmtRy2bIzdXxZ7gUUuchr8JEbqL1CpQ4HHZle4yN+
	 F5zGhCRV+ssZ2YIOLVhZVzZjFJVVWFKN+X0ok1KE6i9BoJ9Y9B08tiqg9Wt4tDLXkW
	 IQdGB5kNOajGFXj+elJX6AgUEJaLjMHx5fzbe9S4sYQNeuMcgBwx5OiDhrlVOlqraO
	 +jVVmJb8LdmZ/Qh1tszy+kK0zrTpN2psObT+qh/nxRbjUzywhPwThurxizgm3/6kW7
	 1NzTuJ5LUVrXPj8EpRGDf+J6ynFib0QIz+HVIaWsnv99PY7MhtNYZra2FOwChkRyy+
	 VQEIdP7nml8RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95399C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173772275359.23953.12421478283044179680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb9a10cf881a8a6c4d0b8b3fedd3c9ffc52b7ce2cd78d4df3880d1296e82e6e
Date: Fri, 24 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737722753
