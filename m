Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393751DF990
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753038594; cv=none; b=e7XUUyVf/0pqaEPnF9iPzt5PlXcMXOt5nJV2G+4rFnrE6oyXSbtdOTBj+b9/qHs97/JOWKtMUyqC6xAveyf95y4i2z3YkcQ5jG65XHFZ06p84QvI2W5/vLcUN4tOVpC8+fDyxEtZ0/oCkWEuVuAHZX+ZTZlOn+2IHGlGw9CwhDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753038594; c=relaxed/simple;
	bh=Gzsl1kuhvj7iATX7+tK7G2chrcLHPD5X43UFPRCS/fs=;
	h=To:Subject:From:Message-Id:Date; b=twMhQMQa5b9TeaShK4OotUHVroy3ynKSx03IWNP6etlK+clkQBtcUeU35NIVCYZlWzJFInBlhv3vRuz0oM5A3D5ATinOQAtatVSTQ2NtJDq0CWDY8YXQa8Y725FKd/cAbsYuX4YWfhkijdi6BwkNZ02IQRbojKOxR6DC3fekwn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkGmxCvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkGmxCvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73F0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753038593;
	bh=Gzsl1kuhvj7iATX7+tK7G2chrcLHPD5X43UFPRCS/fs=;
	h=To:Subject:From:Date:From;
	b=RkGmxCvu6WbERogkkDBwMIhkNJfvokSIuBR0P0zt7PWg2eeDQa2cv3nq45Opvkni4
	 zOGTBEf+r3qsvftoAcHA5NVcz2QUSEWdFPifVnVhZKTOeOWuZ8VFzWRA43SY4WYH+/
	 n2MnLxRiOb3TXWwxha0hK65t4SlhMhgjItLPSJU0iTaeVmZeTKWKp3A1gikvyuV5ke
	 rlXEmaiU7xzF/K3BxOF6ZiXstfrv9RKZDGPChQWS44XhXO9Wyx7Crl+z+j4XG11sZm
	 8hsFquIGxRQ0wkf8un5u/YS/6oYzxD/uo/nhWmw8hqeVrmboAXeVcgA4TI5j1fTHV3
	 yCAyEmvPbXcoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A33C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175303859357.14621.17327670098266000674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd609e828ffc2a78091018d4f32db6fd120232d132920b6a5e6909464bf8adea
Date: Sun, 20 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753038593
