Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3915F15AF6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735974354; cv=none; b=iBiSjrF3MPbEq+3Ltf6tRM08F7QtVv2Yeb2XqIV964AoHX+z5wsSMxNgPyGpoHbzR81CF1a1K/hy13XoVVET65qZo5QXh2Z9Qbx50jAmrQTeDwisAXBoP69suF8WQU0j7obOdC1vNRqeo1q/km/6nbtW58Fnp0f8OuCj8lUaKN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735974354; c=relaxed/simple;
	bh=oEMSXsDggo7zT9T0yxMx9+kI3W80WruigxOduM0iZcY=;
	h=To:Subject:From:Message-Id:Date; b=TJAht53nl+Rwt5ldU8ECNNF7RzBiiMFxLnRuJuZR1HAX0DNpzgDpgmSqyyvL6o80L2EPM5NR9EwAknkcmWmYm7ktnpdEPDPQbwUskyZHY+BPRjsqU3DN/yDgvEf4Bmm25EEiD5dDnLMXDt7jKun0iH5fkg5WPU/7gME6ngwGj6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqPA3T5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqPA3T5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BCFC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735974353;
	bh=oEMSXsDggo7zT9T0yxMx9+kI3W80WruigxOduM0iZcY=;
	h=To:Subject:From:Date:From;
	b=WqPA3T5k+3S/Sd0O9JYiz+PV/AeaAuxqObEaxQkxNjrFZWZQj75cxeyE7VKaU+OzW
	 mhzwzknRnimFZLeOBQwuexQUa3sONvrJeylTXk7SLIaOWP9cC1AppA57KIIwfv3vcW
	 xGtkcXoqhyIuCHw7oHmPVGySaK2mseDd+JMg6iK8Ly3PzsndAp5iDJ/AN9SB1888Bo
	 9PSk7FRoW85geT/PJWNVwdYy3FGVGbWqvnmFdqPXP+nJDMXS7l7T344ZZv7iIHK3uf
	 RS3TkstLHlOO6IpPvlOs19qbQpxeZsFs0L2thmJ6PuRkNCFsnsD3/1kdUb61iOsY42
	 0ZGwODPA+EcPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4206E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173597435363.9820.18388945854130254319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84e89c390919bacac719688e10a52a4880ccaf4cf67be98c6cebff4a9226c6fb
Date: Sat, 04 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735974353
