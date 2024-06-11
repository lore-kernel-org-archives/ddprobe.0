Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53685172BC1
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 07:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718092703; cv=none; b=HdpxssP6oAwkN8snjm7NErtZ7RTkG0sOMVnXc6/jqcL+FXp3E6odriSwasA/jvcdVh4WaiefabpvKBzMBK5j95mUQoHn1eefCbDXo/Qh9Q8AzA0ZCxB0eDV/7TF3r1sUHtqeOtotyjNUDWRou16PA8+sVCWba6UvKLQU1etzs2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718092703; c=relaxed/simple;
	bh=NtDtHSFk84GXqncMybF5xTDMwSL2DarOpnY/j4KvXjI=;
	h=To:Subject:From:Message-Id:Date; b=pvxugoa+9NYtJFgSVfyfTDh9b4ogt+yFUVu8+Ed5k3RagtGTDcVpC7cM9l3y7a1eKTuxL+wBVFRMxiXvK1g5KkRyOc3AcFPPl1mG2VmWw4FdiCrMa78Jusj7v34GMXIo3fkUkJ0Q/juz1MzPFjCiylTRwv90Cam9kUGonh/y4J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IScFL+HC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IScFL+HC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4992C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 07:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718092702;
	bh=NtDtHSFk84GXqncMybF5xTDMwSL2DarOpnY/j4KvXjI=;
	h=To:Subject:From:Date:From;
	b=IScFL+HCwljV5fk82qt8tlLXixGxIvUtkwFo+6V1p7hgtXvVIe51JMwlDYt47Vxzy
	 G0ZqA3O4sWSsf4fKY2GFOTymroJ82FLiz9QOaSfscOSh82s0rmnsFutHj61KizFTu8
	 PAIy4NRTlCDgj5WXkkZs/OezUE+UuHdTogBZYnUFLxJpvbT+mi8u2ra0fDA9YXUEuw
	 EciwDdMjitfNyMZyE8WxPn7Z1C+A6cvUKYbpQYyHSZw5H2+vFFKnOGqoGfEd6hJCMU
	 76FYjx3/5Bdw+7S6PpR/U/Gg+fqm/GRJGqnUUVqlXnR37LR5YtSxMcMFBzCKsUFdeG
	 oCeKfYRtty5Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F50C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 07:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171809270276.19785.8549337732542531184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9329e81d6597d1153958cf8d3eed93039bfb46d177dca93a000e8c7bbd750ed5
Date: Tue, 11 Jun 2024 07:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718092702
