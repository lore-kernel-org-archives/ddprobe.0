Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2820728B41A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752837594; cv=none; b=C+pv2KzRvvvDq4QzcrymLONxOwmhw5M668lQkHSEnujuMh+h5WzaO6PjFevK2W0lkylSZaJEeSlupCNZOmtctddrnNqqD522U7mF0HWwk79sVVxXhooQymbrK54ONcV6iCk9pTDjR6zegP3vDRVq69OuTCentRVv4pTPW5SiZdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752837594; c=relaxed/simple;
	bh=/HrcDw4hCr1cg7NSeGM78DK1loP/mi44jdJaaWbOmxk=;
	h=To:Subject:From:Message-Id:Date; b=OR2nnP6aa6zLJxXOhUcHDKNSoD79cZaDqZbKM8iUwKY6CNAYeSqBIk7Z+TGVaCfLmDWXdM8hvXFmSikp0yo/9XnEt5FSJ3F9P5VikgrUzHNoSIlCvQUVDwhG7OpB24mZ2Qnx/gVYYeu97hf4ogzKkpcLgjqTIiNmNnWrhAhakCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMY6S/TC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMY6S/TC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1250C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752837593;
	bh=/HrcDw4hCr1cg7NSeGM78DK1loP/mi44jdJaaWbOmxk=;
	h=To:Subject:From:Date:From;
	b=cMY6S/TColCYFq51VyWreVUvUcymJ1YIlKpIznSzXv7Hewu0LGAszdUEFbK1J4HMf
	 XKFYntb5oXmlmhFqh4kjOgGJVGxq6Gbj1MhYTAVDM31bS8uwL8D5BHGYZSV1qmgKN+
	 GnfIBPDnDGftm7orJZ9YIbvozHwaR3vm9EtpkjPZDVhIKhg6SWa4csSDa6xwCrhsnF
	 JEQyMhPfDT7QZRR4roJVvex98YlC4skty6g5nhYGt33wa0y8MFoRnZU1r5R7SJNWba
	 C2xF7Mp1h0ZXjyYoxk0cf0OeXEi++ZMwUizjaUEtOs4NWjyFKNXfF6bwnYP7H/Je4c
	 fabGT97itMJRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C0C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175283759357.14519.15133452009506586338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c114b6c31e24a50e6438d3093e338b0271d34ed9b8728c31efb4f177c91e89ed
Date: Fri, 18 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752837593
