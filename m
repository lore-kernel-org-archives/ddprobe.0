Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433901E485
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746289194; cv=none; b=sSJTOty/SjSe45hyijihLE/MvMICDdqfMZ++ABxmxq10T6XEjhTNd2V4PraqrqNNw5crfw+LilC+Ro5LjZmV2VobS/etiae72MN6TgxH5RUPfbqdvaskZij6Gfh8gIDbevQgPObrqXSevqXZJ9xUu1cSSXhVG8AnoGNDaYZOfic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746289194; c=relaxed/simple;
	bh=5T+qKnmNSSX7tn4QqVcQES/0/NwipGle2Rro/1HEEPg=;
	h=To:Subject:From:Message-Id:Date; b=nuUxO3rUzRURibj+IvZYIttchAA7G/so9rJG4KXi99bILNlzwGAHWXeSI1TEbL8K1E907C8GvLR9ZVqYbdC80prdGiLPr9YezKHOORxPUy/c5pOC6gr24k9FJ+Gtyf7RFhwa3ErRNbCCXT1ePsjywSVBJwbah4dDzCaHXatnYrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6N0AqfE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6N0AqfE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6775C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746289193;
	bh=5T+qKnmNSSX7tn4QqVcQES/0/NwipGle2Rro/1HEEPg=;
	h=To:Subject:From:Date:From;
	b=n6N0AqfEVFVFgdlxw7qsQaePflLukGQkLxO4G5N57zdwme1yFMsPy0DgX383TjAlf
	 AHI8Q2shDWRPP9PBEJFqqEYZd2wGrKlFLeJ0jk12A7fs3LEqAShLSqVHc3tqujWSrd
	 aatXS4IWnaV30XygqJpn7dXoRwQvRmYD0Cxlnm75eCvtYX7zUtCTmg5U1DKYP1TcTo
	 FIWmLC19qe6I9/wF07EqGtVFkssapmXqllGxKRdoyHLPyIuEXo1KEUz54/ixUWo1kn
	 BYeBFd8YL5ErmcVGM3Ww4bsNELviFQE5kcuiYkw2+GAsyb4ZI7SEukdPKQKFZ4A6OU
	 AVH+ubTNx+xyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936F9C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174628919357.9217.18366924470922968179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe4b146cfb9f47b6afd36682dcca54a6ff56a7e17cd3bf16eb24cbfb0373646
Date: Sat, 03 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746289193
