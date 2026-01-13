Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015FA2080C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768319034; cv=none; b=L4DaI8gvyfaCdQy7pnnbRPEAC67Zb73SiZsRB8xfmi5P4yKQKkHslL1WppBH7YrxmGdeaycJMTHJybBhS/QjqV50Wcx6I8JZ99V8Kezr2LXjW5RFZqDA+fAmAbpZbKETq3UD4C3L+LPmw9KmJhLaLU+1g2fH72Res2oV0ko1msc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768319034; c=relaxed/simple;
	bh=07iVVTSByBkm3L6pzpcHlNG7Ihhg1asOLCz1jfz21fY=;
	h=To:Subject:From:Message-Id:Date; b=qQUrnjCbFH3XTJMCs22avVXlWh/y3Fu0m7pJjN/zpO5pju7obB/SXSFYwwGx/8GGwbJOiQCS9t8lBBRunad+2rKEutHqOSu6zqUz8zEDC5/x7fXhqKdAK8a5Mx+m9NEKmYglW5fU2j5WpmcknXQOTOVQ0dd08n16Yv3CG06Mr38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHKeOnDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHKeOnDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3E7C19421
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768319033;
	bh=07iVVTSByBkm3L6pzpcHlNG7Ihhg1asOLCz1jfz21fY=;
	h=To:Subject:From:Date:From;
	b=RHKeOnDFsT36ijn4/aXof/LnsHp4gjAkysSlrujshHJH39nN5Tu+a3rpcmXDrNj04
	 vnqMB5OTkW8kibsnH0ybdkeUIdnu/r7k11zmkZrE6+6LK2U+3ldkPNZ8QQeqhapGJH
	 4PecSgsNGA++YVn3D0srIsU1iJUfcxA1PbEQesLQIpxu6ofYzlSr86jiPrfK/Xj86J
	 79cl5yxvMoFOiuAnChCL1agebxTF7t38kTI2v55sDWtY0SuOa/HTWE3y0+GzaCdzYr
	 cpQrvUVYg6WLD59eQYFOeJZV6Y2daLeIWnI8Ak0dkjMJ+HrFUWGb9GmChsazMGeNUi
	 AvqblQg8bakzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F408D2F338
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176831903357.18755.7148185111348195503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7405e310b97a477f0013a76aee939831e03a63f2d685554ee12c4a590a2915b1
Date: Tue, 13 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768319033
