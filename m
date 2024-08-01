Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CEC71B8EAD
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 16:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722530755; cv=none; b=Js544IC9zFW3AlRiou0gEm9d094hL4FoG3/53kFcUo9bOHWJMfzManw6zP5kUFu0z8WZbqXBXD9Jj4hbvIVt5JBLvsbmPxzCYCSS5wthf278qMKYRMZPboUVyLSpJj8UM4XSp4Vk0kvzhC+cS+4LqhYDsNjSlOsn1exJBc8BL90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722530755; c=relaxed/simple;
	bh=KZEdd+pbB7biZ9mlxIQUyfqFrwvlX1/Ftk2b5cQPJDo=;
	h=To:Subject:From:Message-Id:Date; b=r1XyiReFvTO0A5onlwcHfpaWgRHGSZYPN/5PfSTeltDN+F/EXlVaBT6GPeORKfvBjD6T0hw+pyZ5D/U6c236ELl7oDzwMHESRjM430+omBas1Zdi0vNzIrgIJZJJ7SyK62kT6b3oo6PYYsAs5iXgzdIkrJGNK3yd67hwRpVIYdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crwuTT0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crwuTT0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F1DC32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722530754;
	bh=KZEdd+pbB7biZ9mlxIQUyfqFrwvlX1/Ftk2b5cQPJDo=;
	h=To:Subject:From:Date:From;
	b=crwuTT0jTKeqv/C1RlCPrpfjlepiyUaxTzOXzKu0//oqZ3bV1RkhSZopEzApdl1p6
	 y1ntAp0wZShQMuIxf2JB8O762HrARY2HA47UCrDDBItnDIhL/11nlXnjtjDEaC8eHM
	 e3IrAb2sbis7Ab+Da/4ZybAUCWd90qJ3bbuB9NFM3LQh9n6jPy2+jcFISIw7a7zdOU
	 CB8dX0bsDykqHNRk+A/7sECOnDxWEsLbczRNfanJAWzXjKdW9eMG1WE+iaCUYKANK/
	 2WRwEWDBKW46hqlWQyNs/aBJUodCDU4p15p65Ld1kH+3k8jSMTTEYfb/wK3NDDsFaH
	 fJCZHGrSmLxNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92534C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172253075359.23990.16872008912426259196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc84b1294985178b1eeaa2f82b6afedd0ee3791ca39df08b6241b176ab0c8ae
Date: Thu, 01 Aug 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722530753
