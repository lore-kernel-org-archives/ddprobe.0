Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399651482E9
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726409754; cv=none; b=LtOI4KypRwL14fbRdhon0xzslwIDZLWJeoTV+J7eGugIRLeZxIfdT4obqh6YyQRQ6U+it5FL0/03Q6m1JEgrybXt+/NwMlrJMMvxzvwyql/993TFy7Ag1XC1mYR1s/7rlwAOQAPXi2tOiLmTqX0cn8OTRAi8jD5F4Y3FABREOPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726409754; c=relaxed/simple;
	bh=EEymqY7L50sQ5Q/ORYsiGY0p/TR2XuervEsrhC1OtI8=;
	h=To:Subject:From:Message-Id:Date; b=grmZGi40mySGWaIDAmcqWGPmYaoMolR41Hwh81n2RQvCDe6I2zA+dNq9VPXwZh3l60HgP01Vug9D6jIy74GWmIgKhS77DCwJqDxmzDJb/R4wYze+Ww2vpOwPL0pk5nO7c0LgGLWOYU/hqVvxGk9NJHk7azQNXqD7QpJEHABBiYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kp9tecPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kp9tecPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC805C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726409753;
	bh=EEymqY7L50sQ5Q/ORYsiGY0p/TR2XuervEsrhC1OtI8=;
	h=To:Subject:From:Date:From;
	b=kp9tecPHsvHy/q7FRsEZfBCJ04IQgo66YgbwByTzALiDXsWzPfzqN1P/JztGhicQ0
	 bB6weifWn7oRI8+v7a015jhGqc3xDoufxEo3grxmhBAiepQQ82GJU4WZQdyTJ/SEE5
	 CudX0Pb3e0CwEJyow5AAIe5LdoHqhi8nIS5krctdTemYwvQOwYnJiQ/e/5qqE7EB4Z
	 K7chu2d/r5/uuNDpCq2Awr/2waT06NjkR5pcTfrHUnQ4PSMliGnIS3LwFfb0ydphBs
	 Q3FCuC2keR724NkwIhFRsIEBoJtZgxTd7WETOLKVV6g4PNRdhWR/awUJbvDq/Mdi6f
	 RTvWt5sbL2C7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972ECC35FE7
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172640975360.7684.16268863086537613498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f2e791e06f9524cc38cabba7f450756240e00f03842169aab862a64f9087e7
Date: Sun, 15 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726409753
