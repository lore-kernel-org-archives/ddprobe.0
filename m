Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146427492
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 16:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716137543; cv=none; b=X7yycbSb2Psy4Zd8JjtYFZTmkqcTtq/gAt5XNc+k5LTWqlrzQtHSjfbojjxYahwvQYbCXQRJ8u0bfcadOxJmtc0JNxNVQ3hr/JInRWOzlN7KK5Yq7U7ZqTI54Gstew8REMGetKZtuGSCQHr/Ac5Vm+pa4Zjl0tbYOaFJoaZ3l8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716137543; c=relaxed/simple;
	bh=f/Ok506CR8d06ipFdYeymTA41G/laEpKB7WfGGyk7so=;
	h=To:Subject:From:Message-Id:Date; b=t6J2RxtQ4KqQhJeYK0uuefWb9KfQfOu9dL9jVIIq7JvhRa6xpeOUvxKOxVdlC847PsdJsRqWAgBdePC7nUWRKkEPMukemi79idyOn9XPIP1Fc6RY6knVAcrQJ8wmhQ4uxGmRs1Xn1q9KvKJjQJQU8HHONxbUw2XwCFPVCvPFQOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdhC6ORv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdhC6ORv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E37E4C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716137542;
	bh=f/Ok506CR8d06ipFdYeymTA41G/laEpKB7WfGGyk7so=;
	h=To:Subject:From:Date:From;
	b=OdhC6ORvtvgUDn9i5jfGVUtYUrcFxlxXqDWXpkooX6cKl/ilPcgD5kc9CGlXij91a
	 WCUcnQyrWi5lU+3kYCpGeC0QnuBNgz8UfswX7vXn2snfk4iVRTxGigns/G2q+QA4j7
	 jje9lj4a2lnpei4j8v4FUW98/PetJdlIQ7krgfrRO1aGg3vFkl5xbPe4qfhRNQ9a1y
	 WzXi893oZAXnP4hB+f0Wei+xLcnz+m7yUJPS4jFApupS20gA+7LFwuQ4H3PXYeaoFx
	 pvUd2g1dxna4eNWrpLYFcZc/WOakkOZ/ZkOQGqcW9Nc2yJMBIDVybs4ogBFcGBa3K5
	 5czTUOAjcdNCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFBC2C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171613754282.32011.16690312083522138486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9509744967ca41f80a18bef995617e41aeffdc8bbcb1330a69b0f113df5022
Date: Sun, 19 May 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716137542
