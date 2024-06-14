Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562D4393
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718396303; cv=none; b=bEtoLXsW+7mNs0lweqJI0mDvEOpJqCQqJS6N3pbb3OiAAwDYZ7Z/K9Bo/ZGOLwvXaYsSlHi0hZK3PihC2YEBgWyZUbghy9kTD9E+WTdiDRSa3QZ2P1mobTYUFLTiMm+ZUqXKn6OFAlsxcuKRy3OEdAMEH5L8PYMjl9bStEpD/fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718396303; c=relaxed/simple;
	bh=0/q+7TC86N6okmwxCeb0rHPhvKtyKDFcdGsvmVZKHAg=;
	h=To:Subject:From:Message-Id:Date; b=UctmDuuOyOglKkC9zZnJXrZko7+cl3AafhV9Qr8BE2Zs6mmb9c8KQivFeXCmdDflJVQGFhaxHRTV5J3fx0VNASQqf3/2bkZSrihttM2WKxbdySJyBsM8avaN1j+xVBYM906RwGrh955QYDc9OSSw3SLwqVz6TURIrM7FrEay73k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQPTNfwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQPTNfwV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D617FC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718396302;
	bh=0/q+7TC86N6okmwxCeb0rHPhvKtyKDFcdGsvmVZKHAg=;
	h=To:Subject:From:Date:From;
	b=SQPTNfwVrBxKbyNsfcg4gnek7tbh70u/rY1hp1Vh3sPe+O0JcuorZ+7/lju37JLZF
	 AIBouaoFDTFnIkcN2rtjppTEMW6BCmyyhT4yzVnRc9BnWzhoaiz6M5nPBQVXkyCdse
	 /R3ilLRyHdrjWKyOsF+VPMclrspybAktnJucQANUFZg+NnSpOTuJKj5JdL+PlB+3IN
	 mojlqV+h046gXBRdTU2JCkH7lyila9+KShEc5upyEushxM78OdwpAJQJ7mJevCbTZe
	 7q+3T3lL0Q8+1/W8nS/jHpxLzAG7sFFHjii79oZa4ElTTYLkUYpZPu/UoJhdk1CGZN
	 lu4Hq2zBeTXwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F63C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171839630276.15494.15767600419097237273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b9903c33392296324f39262cf1cfefc45fec224088e1fea213eb2db73e35027
Date: Fri, 14 Jun 2024 20:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718396302
