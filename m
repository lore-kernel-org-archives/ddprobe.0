Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E45B2475CF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776698854; cv=none; b=bal2OHGEaSTnVRO1UCPHrrQNQSdsWoRvAPKaxMscV0C/8XYw7vzQUncc/PtIfSQo+EzEYJEQhlCHYcc8AXwureigDsngh7fcz5YKs4AaPsDuckMRHjnENCeD/SfqfU4qSe/gtO4nNsu9JALL7xMfK0vW93QczWqQ1QA71zrz4Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776698854; c=relaxed/simple;
	bh=TnlsaVvT5Gq+9Ag1OX/++8eBEzZxDs3BRThwSznHcXo=;
	h=To:Subject:From:Message-Id:Date; b=nKGoGTd+D7D+9u0FiUlhWMVnAeQPFthCazHK6ICIzRhUQG+AVpUAwQVM1Ic5OwbXGHBKX11EWw8aemHxC+mXPWNRtpNL4J3NfCY651IoflWReW9fRMuBU3ja0BjI5aH7ZZPHVIZGZGXW/c+Gahl8jKIKjQIiSD/SmWvugtwuN9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUimZO68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUimZO68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92C4C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776698853;
	bh=TnlsaVvT5Gq+9Ag1OX/++8eBEzZxDs3BRThwSznHcXo=;
	h=To:Subject:From:Date:From;
	b=WUimZO68/bVYRK/yCOOSjn0U52QDXUXPWxPOCdPa4ge7NYlHPbjw42WeNjvWy4zcO
	 dik44xjaA4VK3bzSfCq7nOdamtgnfWygRimWSW9ruRYjYfCRoL0sIW9dCMN+7onoH8
	 2x7c/TPQkjkAIqe6HdmcpyuOVQmyz5gCc64XzwPyyTUPbW75q+vGxu71qHS6NuFdRV
	 M8iQxfKeK0bXHZXkLyhZUu9jHkSFbMiNZWD0CVTLzX6JxMQyE/UL8R9TfJ5YffjcCB
	 NwX6kHgQzPbOWsYzHiKZCz6rtIo6UCRuoBEVcoN9PnCGf33fRL8IsUkJaphs7dkob1
	 6EH6Mvl9LxEow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA95FF588E3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177669885368.12789.4876962399544069049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 012d4c585caa00fb7a88ae795d4fb3e711563a4ec6e110db003912bcad756843
Date: Mon, 20 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776698853
