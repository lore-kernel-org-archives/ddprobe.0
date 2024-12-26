Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B74014D708
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735211154; cv=none; b=dXlzaF1fqXSq+D1R8zVejb62FOkfugVqXJppui23MZtLrmAxsB8KfBYBOThydY5o9jPeSLFvICDC7Cpke+SJ7uI+NIsI4sfZaYKRrZQRfh3d2uGj7x7lM0gEMIz/Nj+9VfdeGfVr7OGY5bJQwynDAC29nW1Ds8oSwtchlLf1ESk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735211154; c=relaxed/simple;
	bh=BoC7yD98JpMqv7yOS7LyXNLVJCWIrO+dUaGjH+1ZnCY=;
	h=To:Subject:From:Message-Id:Date; b=ZYSucHTkAEtuIglWcea4DBFZpOkK5UBIXqLkNhx6xNlF0z4NUL+GG7fQ29nHnUFTsv5Cv9/anIMXirg4I3S51STjsPFuEZnVYkeM1Hxod+atIaul8ZKRfsvJvRX2Fn0aHx7xBA3vFbIQoAA5zM6i7td1GwF55jyWX0aNuftMC7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M39nuy4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M39nuy4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75A9C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735211153;
	bh=BoC7yD98JpMqv7yOS7LyXNLVJCWIrO+dUaGjH+1ZnCY=;
	h=To:Subject:From:Date:From;
	b=M39nuy4ywoSrhGiICPDqMIhQHqMz2eeiu403QqWkoMFUz/K7s/F32a9jn20cE2hYi
	 pqOy1myLguJ+OkaTrGTbhxGajxM73LCArnGEeMwVfzd195ThwfjLulwsH6ydyB1zfU
	 DMWtnu1jezUw2MWXL27Dhj71CoiQjllpgG9K13m9SaSB9Vsyb17r2t6qKpjKOkMhZ3
	 +ncIJJpsYeVqwdh7EqSwSnUpnaSSL3RZkJy5qXHklLHHuHJMr3J9EuhWzoanCmD35m
	 tNn+iktAQ6dA09n7dR+hGog2jsQjJu2SoPcT1AWvQY/1YmjjERU2nDJfAiJykI1HAR
	 tmrQb/pMNoscg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9343FE77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173521115359.21695.8595587842534780254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff66f33198f12c3da26dd87e1499c3732067741cbdcd009ed1da417198720d2a
Date: Thu, 26 Dec 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735211153
