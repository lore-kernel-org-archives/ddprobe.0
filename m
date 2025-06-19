Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5F830E85D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750365594; cv=none; b=BXFPH9TPW3QUd3srVJel5yYnEWxMo1YOtGrkfe2FgwgzEBBmNsPiszykhb+Ee386lQNMamAwUv07xw5u1LI5aQSQKBJ5wagTf6cdygRiVHKEhxkNfd6kxTk75O6OWs9Mfx08uqT1PPc29MJBmY/X5lS6Ae/peshnZUs365vTCIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750365594; c=relaxed/simple;
	bh=wCLiZTP3UeOOJa+MksR6L3kqIBE2NdrvG81eWPMU4Ds=;
	h=To:Subject:From:Message-Id:Date; b=eDq107jXwew/RIEy2drpk0K3lbfYO+vqMpokUDbVkGYVyo4+B5ku0CjR5EzRk8kZpt2WbmyDZTefhw6lJzAb5vOYlKFLiaSP7Umj7mMQb/7CnfEP5WLH/l4ydpi4RcrKzjvM3dmu107/oikzMtOXjRfIEPFLlREip+ILGbeVe4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLDTbPdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLDTbPdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B97C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750365593;
	bh=wCLiZTP3UeOOJa+MksR6L3kqIBE2NdrvG81eWPMU4Ds=;
	h=To:Subject:From:Date:From;
	b=XLDTbPdCxGZGehC3CIxRTO6brL6+49c3G5bzm9a6vTebek4toEpwAECx6fqVmUq4/
	 8QJFswIDVbTIHgLC5BHOOxI0alWUUrRa2d/ZmYrqRwtLPTutP3OZVQLNzdXBxMr0N+
	 QXgX0fumSJaZQ/j1ahZ9/t1v8AFEusPBLTlJ6J/DP5fzzmbeCPdVZRtUeENh+//T71
	 fHw9qIzCIHdJdIkn7Q7uUwL6bG/WizEpBHX7FUanNBt96fr7OHetzXNY4NQOeYjpw7
	 gJKOzyDrHPsVcKd35n0e2OoqrWAdjGqqA0eUJtoRkJ2bG/4ewjTzDKwfKx1MKOLnsj
	 alEMJtOmacMYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91822C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175036559357.3365.8326442882837894649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c692377536bab1e206533ba947d6eae41b96ef879357f8d8efff52abce24d6
Date: Thu, 19 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750365593
