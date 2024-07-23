Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329173D6A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721720754; cv=none; b=JrARqhaFFokgYxgzAs0HIDNM0SWAfZFeppKoui+iJ0+NvdWBlrTfdF31zWDk9jjUgZiEEjwdLAdaFhFa9PSDx+tN7cka+gs+em4KVPZrBSTJndsr0gHFt12yMOsIV5bDFRnQmgqT5t8VSXiLqhqSgDeRKqP6qcUWeaxjb1CRZSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721720754; c=relaxed/simple;
	bh=q1PjtFW9UTdaRbHUsgR8VFfFYBlllL0RuvbmbQllVk8=;
	h=To:Subject:From:Message-Id:Date; b=lZbPbCyR11YTzQr+u4esaW5UOSJLHTW4M/ms3UzlVjZEPhqQKYCC+SpZMAu9IGq28IOKbzzC1/I4jeWwqLgeQ8E2xKn05BXI5TLTtuBEItNnH+tOyLApgsai+HDkugmR9S7fiGbDjt5kOiCQnsPQ6OVw7jhRwD/5o2ADifGEHgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RA4r4Ukz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RA4r4Ukz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7597C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721720753;
	bh=q1PjtFW9UTdaRbHUsgR8VFfFYBlllL0RuvbmbQllVk8=;
	h=To:Subject:From:Date:From;
	b=RA4r4Ukz2NkYktaabx0ua3ZlYiDKWapdudCxe0qWit3NEwwcDN6T/szt/SW+oQ+xw
	 japePdN0saTaBX/9trg+nwfzmJqM4rSir29EeoCTVbwYTAn1osD+NAJor+YNHKQARf
	 qUae3jdOV76SDXLxLXt4JNyPCOnzQDHygmsen/7mqDEo9AzJsm35+tUOVcHEwYFXi0
	 8xA/mQl4m+NACcBkSmGlrYDtNwRO0DJm9w3X676qrc4srU6W6LgZJWZtFHEmpEyDAg
	 50Qs1MsVDL5I7zQ2JQJrGveRQZUjvAGyZuiCGv/MKM+2LiQrgLEIMQQo2U6YEMhOSd
	 53QHUjPu3RMzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23B2C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172172075365.4810.3818474437729268601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6689801a594b284ac67ddd2db0886b331ce33add8fa5d73b107b3e748644db91
Date: Tue, 23 Jul 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721720753
