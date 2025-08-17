Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122B11DB127
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755428394; cv=none; b=X7ylVVOzv4IZE1XwNEA3EsQU8l/+/vbhcxDQVusp3aVi3HLUaJSJi8SqbkMaOn4+fvR6diOq0VJLIygv57EGlxzoZ+R6AbQQ1IV8etzaQTYpRJztkfndXlSk/2qNK1/do5Du7zmi8JjB8WHNobCq8TYfu3/6j7f7dBbuvE0EtbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755428394; c=relaxed/simple;
	bh=O4AfD0bAdzoU0sAmbKfnqNWdBqc1t9jKbPGAEf+pxAE=;
	h=To:Subject:From:Message-Id:Date; b=jiQVsF8dn0q9HnaMEZYoGjWCwvamQuUHEmKQVb77UFx6+2q1Xq7ZMP8zwDg56jiMGM5mZJnau8q/ksOUEAljpsemSHlrFgh0BXQtF6iv7Ldz5jiHZeNuMePJSOnAAAm/kww9i26FvrMlNhO5QONC3GRx7vq5a67GzWO050q58oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNAri+gW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNAri+gW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2447C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755428393;
	bh=O4AfD0bAdzoU0sAmbKfnqNWdBqc1t9jKbPGAEf+pxAE=;
	h=To:Subject:From:Date:From;
	b=nNAri+gWEQg4esuc7PXbAhE7d64nK4TAPNQcKejJu6WM9ltmaSYqBOXkdHaAg3skF
	 8t89Sx1H0vqKV764rViUT7VCBeelXCqYKs/lrVkMB4hqWohE4h2yAvSmfL+DXczplT
	 kqzzWOX58E/Sy0kqnByVyIV6vEFUq9bTMsA05/YuMgmHfm5xFYd6WZrNcS4QEA2XB8
	 N9a6nW+87BcjtNGLSk/Cr2rciSPxDDEiSe5a2lRoouNVVugfjxrgZH2TgvPutP0KCK
	 JDPjQ7nsLlbwp0OZ258t9IyNd1Ar+uf5A0kl89kqk05yScqvLF9APL0lArLFQ+Vd28
	 4ry090OrJ2XQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9224FCA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175542839357.12323.12622329344007287283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e8841573a32da9102516419d321a31951a407b7eedbab576a968b571cf473e
Date: Sun, 17 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755428393
