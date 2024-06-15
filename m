Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C38717BA2
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 05:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718429903; cv=none; b=LiuDj5BJXDdwSclmO0XaFZeeB/Czq15hgQd5IbhwD4NX+OTBz+UidKWwW4W5O/leglzXDqa26rs+7MeEA32Dp7WgJKyN9E1ZsAzTLeVTIP/1uIxyxn/LMUyi0lbC6jSn8FLiuW8YkkB2QtVrOrrVZRJr0SStiEo8N97jOCqiuB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718429903; c=relaxed/simple;
	bh=8GVrgHrga8EhWVdn6Ie4I7jjTBc788YlxS7u21Yab2c=;
	h=To:Subject:From:Message-Id:Date; b=qPpNhrUnhpttuFP9/AKTpmj9/7onexQguIhGX7F6If4xyjeb7sx+D7lU9hvOZMDWcAljqjRLKB6L0Zc7dUnOLLk7LaYcw+yClPxzaK6ugFIbI9b7os02pPdbzhAHMz/TOI2qmBAcj8GwlEXzYhRx7BnK2221B3Eo2JhyTP4PpWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRFcqwer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRFcqwer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA091C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 05:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718429902;
	bh=8GVrgHrga8EhWVdn6Ie4I7jjTBc788YlxS7u21Yab2c=;
	h=To:Subject:From:Date:From;
	b=dRFcqwer0e5ilGY46DV9haGMfihEwIHVK3By/6J8PU/Qg+Ij9Evay9lIABW9qmNvA
	 uvP3EN3KWSTQ5OlRXXycMvAkFH8ZQ17TQPe9xexBMAG5qmi1KEVEHwShTaXc+HQi6Q
	 77T9l0JzsoNagJe02PS/ABNBKy+j+EZPrFWs+Wcpf8b4KKCHMSjVVwC7t30AzZMOt6
	 +Bz0f/2QRuiX8xOurf7/k5c8mr8zZgMiUpS9Ug0pgdyfiivdltZ39LbYCxVkFt5mQX
	 N/LWQk9aMsUHaljsrCkpThH05Mhvag0R2jINrz3VORHvXBCQdIXRijEZVADy2jBGUo
	 RjaBboV8QKXWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1663C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 05:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171842990278.23001.6882675578066180863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d316bb18cf042848a34da18394f76f9e640015d79712656048e1c78e0b78897
Date: Sat, 15 Jun 2024 05:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718429902
