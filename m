Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBCA1EB31
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731140754; cv=none; b=VzaKmWfBSwO2mzins/Lr2EqmuWTXEXItXFu9D3LKIhP3wOLIkqjb1V9u4WM9ato1LMVKeZOOn61V2pNT0jibh4lWGTBr03gnqfFrrcC96KKveZ5Au+/1YCRdXRhw1sl8mwYT9Ze6yLHZFuDMyD920VVH9YgKr+XkVMYzKDw6Uu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731140754; c=relaxed/simple;
	bh=peRj0pgLIfFcaN23JOvSCncgwd1bWPC1zf75tCpSDzw=;
	h=To:Subject:From:Message-Id:Date; b=V6PJMqJU2DVDQdbrBjc3wY15yo9VyvRsVUz0Lj9uGfvkJ2rMKh6MWM9Z6NWgCuGk+/343lPHDz7MRYitKYJ9fJddWdBQ/SjgECD9zkrnneK23Y8g0LHcUgX7WdvhOqJ+WWAmLHHnGHCsgBCqC5NJAPFdgTFWRT1aYGdDut7N0WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNx3fNWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNx3fNWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DDCC4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731140753;
	bh=peRj0pgLIfFcaN23JOvSCncgwd1bWPC1zf75tCpSDzw=;
	h=To:Subject:From:Date:From;
	b=HNx3fNWgGcVrZQsOXSfrToPKjLRDTvUAejQN0EOtq1uzVuHEL0XAGG4ZcHUUN24eC
	 0UWmzWyBWpMkVqh4hzZzFvum+RbfSfeP8WO+zWqtj7NVfjgsQlTRyaEpXJ1QP4hPlj
	 yB+cgWI2pLKevtugC3dZDuSDF7N0jrla1L0mPjJkDf8HQRassBJcUeh0CmwHvJ7z9H
	 +fzM3wHsR9bAxjxZonqfXvJ0tkTjZjVX5u+F4DNkD8p2Ni0t8ttK4N1yg37SOgdrZs
	 L39wiVu8qFAQVhVdsyVuhfla+14oxetZVlRug6x9Ia2VeYHdP+HInwIqRBj7ia0jD9
	 mjZhTy4T/aM2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94664D5E144
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173114075360.22259.5206787341877134083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aeb2c5ba4a89762bbcb8b996475ce2c0035b01d4658026fba22f55ed5600329
Date: Sat, 09 Nov 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731140753
