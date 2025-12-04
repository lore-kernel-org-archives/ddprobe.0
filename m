Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E62C1398FAE
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764876774; cv=none; b=jNu7KTjmyALR1L2gXHhw2PKa26GwD7YQvucURW5h6S/lu61+sjf8eKOEO0P+U2Qi1oJwOLTH+/BxeF+c3esh/qCJ9hn/CMZvfdAR1crRwjUNuk6qmBS2SdNMHmL62hB+vEC3hwfY3ERYrgQX7u5wPCkr92MN9RMpebnBNn85BCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764876774; c=relaxed/simple;
	bh=MQtaC2LczePJhHTbkuKvgquY4vpRqL8s1R9GiXkUZi8=;
	h=To:Subject:From:Message-Id:Date; b=a6dMumieHL+31LDGO8DxWblq9HV4xEU5lWxgJH0zhhii4zxuUhh/zqU3JZYz3Sb0kcIcz3XDcasEfeetfSxun1sOviNqRmomXw9StOwpgth309S0w9klVOHmN36Q3HPboBKOe+iXCitrd5UdbrcR3yuGKyw/boqbHUvUmEdenW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsikI315; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsikI315"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1850C113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764876773;
	bh=MQtaC2LczePJhHTbkuKvgquY4vpRqL8s1R9GiXkUZi8=;
	h=To:Subject:From:Date:From;
	b=AsikI315GPRWub6ay1lmdY87LJo/mkh8XD9EnMOnN90hvb2fcvHNnFUYe0aLsw06/
	 +PR5dqD9q9o6GCf42omiQzrY8UC5Nn2wVTg/DorkGRUx3ex1UQLKT8o6VNGFWVg3TN
	 Xe2D3S9jNxLFoS6986Au+d0bCu/mrm9i6naDiKhrpavapyPb27W/xe1wqrJ7FEyPkl
	 /QVjbBJTGgj3dYbhXxBRm5lgNMPFGl/PPD8uU2Di8PnOzfgsDD7jA4Q5NNOycTXSa1
	 D64EggtcrJeP35i5BpyprrRJMR0JUdbkcTEjUbHpYWHv6lxOnuynP9hq/XYcOZul/x
	 vh6s8LFLyBMPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B53D29FB2
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176487677358.24043.17183874147314717919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7391985993d72be0192ae19b4160924b23c4350471f22b3e8d372a3128c9442
Date: Thu, 04 Dec 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764876773
