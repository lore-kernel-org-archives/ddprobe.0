Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115951E4AF
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774155894; cv=none; b=HwprFnZUGyzS1SfNt3ChnKbYwKG6nPa0nTyHJo+e7+DPXDVPE/haBXeWIbbVE9YFhgNmgDnxMIZOS6iHfg1Dou3VWqmnd5TM/C3LW5N52mCfWyv+4fuW9ba9NCX/4DqZTtup833Ty6ZmIx7q3oPBsfOIDGu0lg/uMgHUbC28rOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774155894; c=relaxed/simple;
	bh=z/jbnmi8lilJcQZNCwDTICX+ySwWwDl4Ck7EpAZGJFw=;
	h=To:Subject:From:Message-Id:Date; b=r9mQ1G9QP7iAradOZwDaDKFGVCvCo9K2fTfm6U6Fqhk1in7zPI0khZD+L3pPnLLq80BEeXPcQVajzz8v46VnNP3zEFLgPuQLqrNktYD1VfZqc6nZVTJIONRN+csl9Uhn6RZaptxebJqin7HVogIcuDUULobUStMNtmiS8fJAx60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLEpEyL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLEpEyL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72AEC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774155893;
	bh=z/jbnmi8lilJcQZNCwDTICX+ySwWwDl4Ck7EpAZGJFw=;
	h=To:Subject:From:Date:From;
	b=DLEpEyL2IIXXH4+/QB7uyC5CISvLEzp4CKm40Xa3gwOtHPpQOpz4bEZgJciUP40Br
	 LFV0FhH4XUtA7w6wJJ/AF38s4qkTptD3L6VI2ozFD6SgQbAIFs7QqVE1LMrZC5VnAl
	 goIILWOZDTtatBdryGQKJVsutcGgqHBqJAtRG2QykJJodm5rzX8VhjQepGq8Y2yG9z
	 69VK2RUIxMDn5PBSTDDpGwLnIqTbR3ZX1/OQn/uVyhscEM8bfGKIcc7RMMoDjc/XSo
	 pAXiONsQUEZ4PgRN7M1Vh7hE5vGdemIZ3bvVL1SrtFSlnze81qY3FCouPO8QuMQLzW
	 iCQfSm1UWs5zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A6AFC72AA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177415589357.1827.15656488004351535146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5289a06ceb741db65cfc469391e499e03482c1924307fb644694bcb8e60d27
Date: Sun, 22 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774155893
