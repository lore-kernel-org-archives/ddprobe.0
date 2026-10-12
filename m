Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4644548D873
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791809434; cv=none; b=Eg8N87ZDBR3HchApbDS1TggpazgHA5BQOvOq5jVGxDx4TpHDHsb52YN+IlIM6xs8J6b6Jplseik1ZauK0sAFQANM3IBm6joNr9XbC/FZicZo+u7aKIfOhrWVdIBWfyIwzsbrrBcRTXDb3P3I0PPvDvOosIFweavvNr47/a6JG4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791809434; c=relaxed/simple;
	bh=51FddVii7W9PIqiYfiKoc61d27kpin5FIDulc0e3VXw=;
	h=To:Subject:From:Message-Id:Date; b=K7aCXoANvZZUBiKjrNsFnPDD8ovjBmBb8PArqWEBMir6Zb19R/OZfBnNHmMmLusPt5dr60EJVOB6JevnHLjdIgQ8rNsi758zwqnDagM+YkU8kYgy3xTjL68iq0JryAG2B5EuJWsnyFI/GeUNhDhZJiJs5KwoYeYH5zf6RDN5odk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzxL9zV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzxL9zV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BD2C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791809433;
	bh=51FddVii7W9PIqiYfiKoc61d27kpin5FIDulc0e3VXw=;
	h=To:Subject:From:Date:From;
	b=qzxL9zV1l3fIOThNLuje8Od2h8vtGOkqI2Nk36PdUUHjSoXA+BsO0ashi+vVk1Uo9
	 snCSBZ/zbzlRZXuclqT1UjQqpXPsUuxIZLe0GNd7z8w48m71K7I3GNVQk6rdGuRacB
	 9HxJQp3GzpsQL/yzKzbhJGCHKSzm/ANLpadO8O91v4Ute6avxKCUPbBv22DqiBIQjL
	 QBUH+z3yS3IV0m1qXedELj/K4wLu6Z41wEeCB9u5fftiodzWnvtY1m8kCX2hIh5G2Z
	 sE2b4SqbfeVmLu6EHzeXMTIj1vTXKU/5eNwwIR79xWz/EyWSoFjAGfeK5V6j6XFnEl
	 BQ/RWmDHsNhZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7EDCA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179180943368.24341.16107641326103535546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a564bbc988fbfa8f213d5796f12ef470194955475af233c529d9f06d15cad9e3
Date: Mon, 12 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791809433
