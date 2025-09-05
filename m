Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CCB218AB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757037594; cv=none; b=EOlgxQ61WEDChZqWLTbHPiNgi1rNH+P0vsvl9j0U5sZEuFwBbmtK8ssxlVMgWNWM5Ok93tOdI2DlpmWngRFH1IvUwFaA7DWsxjwy+/6OWeT6QaiiX8E+vJhkGS8lF6mUhx39TYGwionERv1Pdx8TslBLVeqMbkSCpywvg7/F41g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757037594; c=relaxed/simple;
	bh=ShCJmBzNjUCmql01dvPEh1b83ygVPnZtdJjnj8v66qo=;
	h=To:Subject:From:Message-Id:Date; b=mRN0JSqWiithlCTlAFWsuy3cl4QcjOWehF6BndpZSl4iXuhbsZehnKWqWvtqWXsz4/DgonU9i+ugOuVOUN8ECbrHbcPxf/Z9vwPNRh4g6kAYwnThz9b1yqIwP0GuBJto7kb9GD9xenh+8J56VAxI48On2CD9SCs+jqw7UcwxFdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s94Ljakb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s94Ljakb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B45C4CEF6
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757037593;
	bh=ShCJmBzNjUCmql01dvPEh1b83ygVPnZtdJjnj8v66qo=;
	h=To:Subject:From:Date:From;
	b=s94LjakbJCyuTYMkCL/BfG3XqLh2Hs3l+j7SG2Sy3U/+jIjdcZTDD98EeX0VKNy9v
	 DVo433hiY6jtDxX19OWnHoB9LKWAfyH9rwsIxwTnxcHipYAPAMgqc/8BeCouYzQ5An
	 V4ab1jzQD7oSuZl5iq2vfaqJBurxxvaSVbrmi5/aPZzwf3xs0pXZh4LBJ6EvwSIRVP
	 htYgX3aEzuC7ZleAuJjIvRxMjUMl9MUJtfN+BWtNeA4MLcN4ffdGUlfgDLiq2/LfcF
	 WW1+EyZRuUGj+eaHQnQmbAJcgaLq8ocvI0Dn6QkrySt73PU6IZHWhhD/JbOy9kFioU
	 fbNC7EclcbCDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F1ECA1012
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175703759357.23159.250074260097380719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 289022bbf4107e1d7ad4590ed7d3a14c619465ddddd569f7244f46fd97431611
Date: Fri, 05 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757037593
