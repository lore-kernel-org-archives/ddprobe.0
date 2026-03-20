Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CE133F585
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773989094; cv=none; b=ObxgsLKoPz/fSI0Cu2/+gvm4iE5uNTiwCwSTkgoffB9hvV7xru72kqSpmRq6a0ofuqYBPjupWLiTfNCGVLOhGKSZybOQkPAzITuc2BD3G3Hrn5e0WpyWGTYJ8m9bMgqmJJe06Ch72h0GLsFGJqV2JB4wm+/g4OjF528UB5Rjy2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773989094; c=relaxed/simple;
	bh=DC+tHHfXFB2lFWvhyPD5B0Gk2eg+QuUzZAyWjrp77W8=;
	h=To:Subject:From:Message-Id:Date; b=e65hxv8ub/zoFLQZABDKibCfGcwDUJnduP9Uy455wawL7ijIuhJaFy5Z6ip9JbRdCgrC7H7vgwWBTL4qZz2TpgEEPdGp+Y5boOVdEAF+yWHFRoKRpKeW0JDRV4p0yOLb0JbPPZg48ymbdUY1OX4EDfIdX6VDe5NNENs9OvSJ1u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMFBCPf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMFBCPf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AC7C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773989093;
	bh=DC+tHHfXFB2lFWvhyPD5B0Gk2eg+QuUzZAyWjrp77W8=;
	h=To:Subject:From:Date:From;
	b=dMFBCPf2LpCaXyYgVicuMaYzxv2ghvRDzQfNxNmKjRD4xWcrIiZmII7AhsM6yU70k
	 LCVEi2p8oXX9zuxLbEN7f1dJa8RoODsmM+WqN989GDR/JJB0gpnvf+crAXbWQ59dH6
	 ZSCD1tNH9g68z8sqWttvILvFNGBPjLlEqNnyrpyX1RS2cB0SjVev4Cl/ddz0lJ4f4S
	 kmhD80rUEHLZsC7yl63SJ7EyVFoVtHEjQa1HjMxKjWsq+/NQ7BeDokiq+m/4IrrPJP
	 0vbPBPysXizadB9+agX+CZ/49NgJHPmxmM7YBmvHIZ+t4wWZtXdJ0UC9U7yFcdk8dh
	 a9MPqBkww/ezQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917F2109317A
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177398909357.29710.14852502106615832616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0bba0006fe5aaddd4b4dca236bbb5c45907e6e319b55c4cfe88c80e10e81456
Date: Fri, 20 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773989093
