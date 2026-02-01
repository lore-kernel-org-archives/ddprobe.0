Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1255F3EBF07
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769945034; cv=none; b=nkhvaYZkNmt8DUyqiIrJwvOsaTOzK1CeCnWW7yboGVrpmCl4uu2nWaprPnyKvKsOcouOIPK0XtSaWZEXQ9oG3DcJG0bK/ZH7Dg0k0h+aHywFi63kbn/xZU32Sjk4u0R5d64IsoecSYZoMdGAWn3mu+JfRflhPlpLfNReTl7guDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769945034; c=relaxed/simple;
	bh=EHLfwBoI4u8XkOklF3N+hPOeRqhZ43Cf2RMj5IxgxGQ=;
	h=To:Subject:From:Message-Id:Date; b=Sbuk+5uWQGxcuk7VbT/dZ3yWpZOg+QBVV1+FEXTpwNDTk84MQh0vd2K+sZOsqDJUpWsxwO/jOGutZik/mkOjxm/5tylPDHZUNFt6volGAtrt5UQD5P4QTa4YC7Xc0AwOFTizXUjTQxvgSt64HIODZyhNsnjfcmI6+vkK97je0e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2ft9l1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2ft9l1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02EDC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769945033;
	bh=EHLfwBoI4u8XkOklF3N+hPOeRqhZ43Cf2RMj5IxgxGQ=;
	h=To:Subject:From:Date:From;
	b=a2ft9l1FydR8kiFnvl7PT4OpIBdfGlO2gSgth8/xEIEu5JMe7mMkcm5Q0ez9MihDF
	 vlEMtk+uuLDaU+xg1/jSaTeBEh5boCLfhffCEplIJ3AqB2oE1isxOshOd9HhfVtDBL
	 bdGiWkUo8CPpYo/jrAeGwSFpBqDW3JR+XrksXJDsInWr/3O1hE/36p7rtdq/EZXiBc
	 +VyR817yG5g1g+xhFlX4HGCI5r5dWbAk0gMNk88B9dG4mae6VIJPZT9JKDODoy/ya2
	 n2dsV/RQ21rPgPPaASrP1QeoN2Pwch8iFeoF4HNVxOYXKY65GHxnauKpC8Zc02i0z4
	 5Q4KYFA71pzpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E377E7C717
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176994503357.25884.15545503630920785685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b9d8f3521581975a63b9989c9b473498d46ac8bcb309bd8002817643842d63
Date: Sun, 01 Feb 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769945033
