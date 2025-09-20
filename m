Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A24F1A9FAB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758384594; cv=none; b=pdt3qxWwNrzj1+72ZqYxj3LQJ0ygiuZ1gqaXq41O34y9Xe2eKQj016ij1eE59MvDi4VAonuBJufO4deoBvBbp/EoSRJ8YzkrDQ9Jjz6DKwjjqsFGjB6lL8cTL1hbk94uJo8+z+H2/qfmnMvN8vupawjqbzTDRgLYIdTPhQsZgOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758384594; c=relaxed/simple;
	bh=GYRPkdDXASQ05gAmDyfZtO5tZvetI1AY45FJSS7CxfE=;
	h=To:Subject:From:Message-Id:Date; b=HA9PWrxUNaObj4chUkzp+3BXNq43jfYM6yJASHSHXqK1OZ/y0ywuVJuYvAVdiUOmFXxPpYyjgv3Ex8KRyHZacqL1diJz2ZPkU0qZaO4M1NKr1PaDyuDtAY5LeUkNospmC7SntawwNB9dflCviEauaP8tFuVUmwQdwh0Oy1Ya9as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovfOPWZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovfOPWZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A583FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758384593;
	bh=GYRPkdDXASQ05gAmDyfZtO5tZvetI1AY45FJSS7CxfE=;
	h=To:Subject:From:Date:From;
	b=ovfOPWZJ8/60JGE99tjJJIQVsMqSs75JhVhMpFDVBqWN9AyQCiGiXxzsTP64ArhW4
	 KM0XeV/G0VEDqgkpstcBg1Zu5y54qLeMyx9hbFhA+ERpG5y2ImSQ+o3TeRenlOq5Qx
	 87iAyarrAT3rQnII4RlNsju1oT3basLw3QVWtymGpDerq7Bu7SKC8gs0dzv10hHRU1
	 2GAMhPV9Vf/nXUGIQgbp+V1P3OmttWKqsg3EkZYh7/1u8YmaGqo7RrO0QYN8eRdLOP
	 Eg4IMA55t34KVRwMsXIW/WRVdBysnghSgQQUTBX3xoDNhu+IWKl/qnRY9KHBp2EsuG
	 SESznGh7dlnsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DBACAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175838459358.17406.10130858356667124088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a8cf827b4398cb028cf0a50ab9280c9b145b3c5a3d3173c50238ce5b43657c1
Date: Sat, 20 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758384593
