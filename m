Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56C152F88
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728132354; cv=none; b=rlrxxRfBIfxgAEtfv5BbRgVa0NauDpkkxT+HsL0aUZxIV4Ail94YF1JdH+saIMlSWOkPF6KKo6Yv52rTHZox/0Btyvwb3jk7zikbKXTC2C4hamPr6vyUQpHi+C2EuuADKQLQBU6NIHeAS+pi8Y8anG4kkc0jR3VkSCD6+0j51fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728132354; c=relaxed/simple;
	bh=6uQJNRBZbKdJkGtvgOUDEWS5VWp7Zx/yKGnJd0NPvBM=;
	h=To:Subject:From:Message-Id:Date; b=Ix33ccAG2wj4Be/YUuhQC8Js+v8g3Pldz/4v9DLK21eIv6sR90V5yFxJxwxL65cEMlgYtYrdMfKcJwC4lzUOuCW1n+PKWXfUt5+kGfbJOHB680wfdb59qDXA188tPPqDcvZ/NchDXSO/nqElnZeMB9iB13G8B9CQVzywabW10Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6gcmv77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6gcmv77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18A4C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728132353;
	bh=6uQJNRBZbKdJkGtvgOUDEWS5VWp7Zx/yKGnJd0NPvBM=;
	h=To:Subject:From:Date:From;
	b=a6gcmv77R7sKQhi8OXe8g6fNKxgipRoT81UJ5pDTDczTYUIgWKwhhuNPuekbStoMm
	 aF5GY6vqeYjWk/uSHXwcOYbIqmZRBBdAJLYc/Q19Zu8iF4Pjvnd4yjKxh/oQ+3bkby
	 aKgVnWt/RoIU6e3dj8gmcnW/7clOF71bXsLxrCMrVLcLchOCt7ykOtff43zph3bE7s
	 9sg4UlGBzyTSF11Y2jS3Ah1I52Dw4ftBTc0JU/4FiAw6HEoGd1ervEc2Bpxa6t2ZbN
	 7iknU01MqDyJ+/qBudyB8JtpiNq43L+XcF0k9WBUaTyVTlPo0hiwMULmWi3y5rn4xF
	 cDw6GHERBldUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA09CF8862
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172813235362.31418.12682602887365656197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2b9701e96e68a88c11b3c1d6af9eaf14a9ad6de0d34761eb1d81ea674d85d9f
Date: Sat, 05 Oct 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728132353
