Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32ADB10F1
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745993994; cv=none; b=Vf80Z6HRIfDFvjwHDD0GDJR74aApWcuPIB72Fl5Vw3kcpa+xZKgLECwbfR1MGtDwCm83N1rIzG86fTPVS1am/540t/KV6hUhzkorlHba89ZzcJ+iRcRWAlEif7wcfG/r7T09tGHxfQ+jOy/xIiZJXjZvEyMBYxIi/Lor21W6Nto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745993994; c=relaxed/simple;
	bh=nw/dO9PRUarECJBfdsKqgka0CbO9SJyf8ouwYQwhXn4=;
	h=To:Subject:From:Message-Id:Date; b=H1hh08Czzq2BWUId37QqFEqQ00hO2LWG4IUDxAb0b77Eef68mHNz9q75dGnmqNigsGKZE1zRSRzRr+kYpWtwycw3+fhESONs0h5WG6nB3ior9g+QtMQANcJsmqvbA0X4Deuoy5AWlERhdbNBPq6LWRJuoblmUmmuc+0/Yjzyw2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNan2D5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNan2D5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F0CC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745993993;
	bh=nw/dO9PRUarECJBfdsKqgka0CbO9SJyf8ouwYQwhXn4=;
	h=To:Subject:From:Date:From;
	b=VNan2D5f9kp4r63DgU7MTWSBncBxQroQXxlYmG4rX3Bh3/AnkvJXz0Cdw6zutjWNG
	 GsC5oE5ODTJ8uhj7hjyXsb3xDEMMs/AYwLVSbJbIF9YcmAidiAxARElyPWEJplTB7h
	 uzN1HhUgaiEptWggeDZcnMWrWUEeEaHMdPuDyWcLMZkM6+56g/swQ0UiF+fQIZcSIC
	 L+wcXEX3fyNm0VTRhmcrx4wb6Z+WIU5UYkJrk5vEixnNPkvyCR49NiH26UVTS3uC8z
	 1DidNlHZIjl6coeg6z8h/YqaJz17Nb24hr/uq1wXTmr9tka6moLxuALfgYkVf6WalG
	 26AK9H/6p1b1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F03EC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174599399357.23995.12758847121680753589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45bec17b3c41eb8b6ebddb1a45e100b85085545abdc0234697ea452384bb69cf
Date: Wed, 30 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745993993
