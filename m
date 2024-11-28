Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3808B15535A
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732785954; cv=none; b=qbZIjTwZndxJeaJltkIomBtyvYi3n5oKr9VFSs5h9cVmTsgBvnImlBrRpdbrjkLMBdY3B55j8SKy69AjFLGXakx/xyi2jvG+V+IQYDp1F5CsWSS3d56ViOEytt7R+T/DiMwGuxu1Brjn17BS7B9MeW5wQ8xXw+wIqicot0xgYt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732785954; c=relaxed/simple;
	bh=FCKhrtY89eSU9y7/lQYnQv1jVkKcgnpeC0g/JkM0B1I=;
	h=To:Subject:From:Message-Id:Date; b=k6icRSL842/eLjmdWit0QAKLTsd2Jyvp3f5vciDXXCB0bull8bK9Z5ISOffodYqVeanujovBTTIL11ZybAck3rpEjgKBlaPE8quJ82Y33pUkeMA3yWLRfO8txhQHPLp5JRfPHns2UCW/SetGgmCf2Df9gmdcU/0yKNRwBibGzkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgkuK8Fy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgkuK8Fy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACEFC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732785953;
	bh=FCKhrtY89eSU9y7/lQYnQv1jVkKcgnpeC0g/JkM0B1I=;
	h=To:Subject:From:Date:From;
	b=jgkuK8Fyhhuf1B+wtFmkUN4vKXjwGZ4UCaGZYk1gDD2ruOJlPgBn7IW7oYEbBf5BS
	 lTJ6DatFDAijDbNmLRMzyDknTcB9LhOtuXsygAWrFsycPHzAq5kji9AQNV/5fhEJjj
	 yDy7KxPBtJWvGhHEWsJKiyYxC/vrla6irx9NPdF8NPLfUlA6WEHmLg3iKYb/jOPakF
	 p3tSK5K0EU9JaYaYCl7TCReKSy33kP/Faqhtdj7q6TfMs9EXyMK7V4wHlFsh9nFKlV
	 lrUvKIlOf7Qjh0rVkHnDv6uzJfwU8/Lv10x2XA4FpEs0nv8jqRVfL0XOI9jAhF1m77
	 r7WlybBq8OavQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B26D690ED
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173278595363.428.15271662289484202410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5142bbe9e53bd811edb14d8c371c42a69e188d59512205076b3b8ff2a99237e2
Date: Thu, 28 Nov 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732785953
