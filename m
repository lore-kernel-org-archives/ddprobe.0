Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F892914
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 03:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719546863; cv=none; b=siIFsvWSgSDO8cS55dNLOWekC63wahbvCSzG7MTe4XOZcqOI8ms+DMmOgKU+4hmDghb7RufV0uooOtVugLdQh7eub/tlKUschXZ7qMBCM4cmdAoPEHyDALuO2a8rP7xjpIr0NfSUE+a4ZocXCkKpxozYXQhXoPYSDTLKywdqStc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719546863; c=relaxed/simple;
	bh=OyMyrLeXItbzUyQF0pO6RX6tXIq4mOPSJg+ZD0irWuY=;
	h=To:Subject:From:Message-Id:Date; b=pQiA7OjFqAqLZ7AxpctYipKS6ixZxXcURAotvskUJpnH5nJzPynqVqccxb31sY2VTni1ND1kY6md/jZy8AfQ+8tg7lvT6ElMMtwLmgIUGbdM5NNzhKObX0rC9JWq7HrGoWJ5d688P2p8mDdOqukF5Na3s8YX8Ch140a1sR0zsGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3bvaxsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3bvaxsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C29C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 03:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719546862;
	bh=OyMyrLeXItbzUyQF0pO6RX6tXIq4mOPSJg+ZD0irWuY=;
	h=To:Subject:From:Date:From;
	b=K3bvaxsDIyhC0ac9n1wRcPIh2lVJwqZ7fyn6hXmsYPWmd4Ce/EWGqtRxq2X0dB+pI
	 HQ/xqVZj6UNHwnkZlM8DjoQAaLSyCkPind527zVX307Gu5vNHSl4njUagBH5K1w421
	 /GYL2+ftUbsYF4hcNHJNgIqbxPQ0OrQy7ZAwIolbHsywAgoY7lrkV2/iqaE8Ke1s+3
	 W+FFeM22pW6PyiWLJIYOfG4EqgH42r9NGWeOhdwM3hTpohZAtvw1/9a5FfUW824tVg
	 +CqpUdOWgFEJc6yEV7D/+2gP8F1X1tCZvIcNlJPtxDqAxqFHqrW6Bh3zkQRMqwden+
	 iAPhqBVRhFRBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4087C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 03:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171954686278.24184.4152887233090614102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad21eff3899ce90aec95f27cc8a0bbaeaf256601dce70d03dab6678e9ab44dd4
Date: Fri, 28 Jun 2024 03:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719546862
