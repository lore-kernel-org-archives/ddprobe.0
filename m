Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4145C189916
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 06:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742020134; cv=none; b=dwzliZcSYgu92F6tmR3IeDsEaFECPku2K8Cyc4T/iOxSc/3DXVJ+w2yqPR3ExA5YxWyzC0m0hLROVUjLF0EyROKfHJbel8LvBxTMImWUz0j7uiWZqaEf9YUPyPqiIry5FeCEU86s2UELjrEoxjuaelZagAbO2O9RHt5C6S4UIWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742020134; c=relaxed/simple;
	bh=c5Kp1QwZKs8KP1GmAdGKxJsUtLpsEuY1lwTSR4uFjbQ=;
	h=To:Subject:From:Message-Id:Date; b=YMHvBKZ6uHvTLvQCQc3WmHsgTZF0VNg+A82C7Uk5yhY06yrHUZHtOH/P1PKegGFYDQ0RInUrXQCSKJyBDUM5WzoqXbSeqh3w6EQtSLuQyeLMj1Icv6/4+fPmSOZeS7YkEY9BqxjJBCZbS5czRZOYpoOAvxdRUA/aZ5cGREBDr9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVjHp1Vu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVjHp1Vu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2ECC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742020133;
	bh=c5Kp1QwZKs8KP1GmAdGKxJsUtLpsEuY1lwTSR4uFjbQ=;
	h=To:Subject:From:Date:From;
	b=pVjHp1VulUuRkm2Ia6GM/dQlOZSYLeilb4JGQzaojf+gydzKQ8MWg83r7CA4ClleI
	 etpDKHI9+8+upXympSWGOOr/YyMsDwL43kwBlH9xCzzgbTIS/61tZERepgOvfOfPLW
	 vZr6X20rW8AKI3sfQM3AoNr8luIEoUqrTzpZ/yL8dyldgZOuR/JxDw7zMQxxObDu5F
	 Oc++dVe47r2oUu7dZ235N3pOU4YQ4ZUT26/fV75ZKklzgZSOYbiFKyNS5xKIKhIYkR
	 yxgHl4dk1N6cBTWPJboivdKUXaUZ1wD1RBBBLDd2CO9fK1PKqwqgTLn/UOVxb+nyig
	 D0G6dOScigqAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90385C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 06:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174202013358.22301.16973652437666508779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ff6483294f0ad2b91c305cc52b95fe87ebdec7906a6fd4e562ecdacac31e6b
Date: Sat, 15 Mar 2025 06:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742020133
