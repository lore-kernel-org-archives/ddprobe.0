Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311BC2AF0E
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746044394; cv=none; b=OZVmp064E0fBFbqtv0EWl7EPngJ3NVJYG2tS9Tn7HC+Fs1hBq3w3drMbbR5lFWRWwcFLXDplcC/II0TvcZVhP0LTmE+l4gadb98kQ8xCPjwoKTwue5QbtZ2c0o5Tz6D9IJgPNbXbEryOXuwVybAUqxzB2AjH2a8rdwb7Tu8pDT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746044394; c=relaxed/simple;
	bh=DPSef11x60GsU4EBdLEuV+5p5wQF7D2M5YZ5tOYvILY=;
	h=To:Subject:From:Message-Id:Date; b=CaoiUSM03G4mOXB0+yZFRY3Qk6mv7V9QERGL02Aaf+KMOGPqJJSCOlQF0B01XEWjmQFjKlGe8NefiKITItKFDcuMahVyccIf5TOnq751twL7IjXavYORAkOAqMqfygKxZ1YWKSp0horHUigVJsSXo9AWKdumbiFyj44R7XJ3gxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jqn2oe1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jqn2oe1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CB6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746044393;
	bh=DPSef11x60GsU4EBdLEuV+5p5wQF7D2M5YZ5tOYvILY=;
	h=To:Subject:From:Date:From;
	b=Jqn2oe1PhdsNc/rjJ6jUYUqmMKiNvAG+ZxYSBgteJNg6+EQpc0Dv9kDL9C/+q5paI
	 zmRj5BOZdhOsNzoxKAn83czwiMcUJJH6F89T+vBvl/dGvhjKzvDAtEQUWpx4TUjega
	 0VZSe389fNHeLnOGYHBmKpOu9UCDqr4JHoPRmRwQAcXn0DtbEEcdxj+u3uMjrT136Y
	 0W0oABzUuAUtIsRJsCmlOuos+qV8hkSIDN+xYKkAY7B562i2ifuWQq+EkoP//cdR3A
	 Qb4tsn+Tw5Vk6BJLgPVKXJONoBTA9Do2v1/ThfXvsCjqp309+P3HS9fkZIXVAPnnZi
	 kz3rzsuT4mZqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0A0C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174604439357.2178.7792345614199134929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdcbf97a6c309045c3f1ec356ef750b2c05649b1e05c9ec318e40095608bce3d
Date: Wed, 30 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746044393
