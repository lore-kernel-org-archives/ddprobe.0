Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B170426ED3
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768913034; cv=none; b=LAqQwQfHM43p7q5hZeMcrSjU0LhwctQbNz8k96XtQShISkhaFRR4zV6UphEobIolxJoF+l9i7JmDySVYozPlt7p5T7vR0vSbjcZcalI1otHDH2qZ+YKpy3IwGCNU9h9vCsCUDrEGoANJsVybNgXYhju3qohqWJ0Fw8fh8AkYK6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768913034; c=relaxed/simple;
	bh=Mf5p1t+GGsNdUFMS/YAgrTgPIWuNPaXP34IEzRStGes=;
	h=To:Subject:From:Message-Id:Date; b=sgeBVnIwbIPGdJ4MwkddpxYIOcKTyFDJtyZDjOZaSyiVazv7UFeqBuLvb/HT/V3quwkRp4g88QSYyKKeWQmLldr25rY7DLjf+yoi+rtUKLaTMsmszrdF3Ag2XQG8hpGa8aaxw9q59aNTNZrRDLV5TzODTRdHSurpJMxsijldHs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5Kupfjt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5Kupfjt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36BBC19422
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768913033;
	bh=Mf5p1t+GGsNdUFMS/YAgrTgPIWuNPaXP34IEzRStGes=;
	h=To:Subject:From:Date:From;
	b=A5KupfjtXkAGFHwmOiAyoW3/WYOJGnrT8+atkydydGMccDqg+r2+eQ7YXCuh8OOwO
	 G5KS86OFwVHHcWDIBXNqX8ihuFNfkd/T8pTSJeDdOB2epxiq6cZa4Y/3KN0TXmqyKk
	 ySCii23DOBp6y2l3LZu80Eg8MPuL778jg69RWnZyZlw8Xxy9Wl+vRm7mh9FmnSuKvY
	 RIB6Nzm4pRufSTfRsYx7c+c7RmuOsafYMkYLDIVCpO+QQSPFNG3BL1QGDDErog3wO+
	 j67GzWBKfPkbiMwueOIYKKBzdtastz7FvX7naU/RNBeqb/AKoA3hLdN0vJ2j4XOhbd
	 CbZ2ao8QTZjHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93153D2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176891303358.2341.10056405214405595664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9d6e5e36b7e72cf0332e9adb24c79eb753bb04136db898253ed97c312843ff5
Date: Tue, 20 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768913033
