Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569843A1B5
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791090034; cv=none; b=UK4RdlILCNCea8ZDKHxw+1IMMf+/8K99M6zkFSKGdj3rEDLm6SBexc4GtqwtCYpiVtJwiWPuolOCl5Ood1hGI+n0VCQjL6QNEqIhlL7Kz0o9cy4C60NAjje26NBstQqYrl5w9rjaU/FxQh1NybWm5rjx4+kWxIil0hETUl3Uc7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791090034; c=relaxed/simple;
	bh=rX0ypsRpl21fUNdgRkepx1nXeIgqcY5yOCRtjZjqG8c=;
	h=To:Subject:From:Message-Id:Date; b=XL9lTJEn99YUhEUHcoO0xcqgERAkGwkruXHlXLa5SYOelYUXxhxNIbTn3ZuqnHhz7zjXIhfVGw5GpBqJXbemIUjfe14K10kI5Sf4U4CJOYY3yKSI8BVsnzb/mJ9hrTI6u0NIYhySjtwylcq68XfCEawca9i1oPNBmCUj+JM4DNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nU/FwHrr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nU/FwHrr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEE8C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791090033;
	bh=rX0ypsRpl21fUNdgRkepx1nXeIgqcY5yOCRtjZjqG8c=;
	h=To:Subject:From:Date:From;
	b=nU/FwHrrjY37xJIZDVPFsBICh0anClKOVvPc1tTpnt7YBFOOSmnTrW6BMoUrPEdJk
	 8KecTrOJpwhewWCD+FBIaZVWtC3vcsTDRRo5MYNA65282NeV5aP63LNq4KECMl3C0C
	 HHZA04Sa3AhSEPcgGWBcRPbEwzZUOFHW2WqeW1zemNeg9zSfH7v0TO5vp7JSlLc5c9
	 HUSJCjXHl/DVeY7vXviLlLjf3CX1hJrCdRRbZvtfPI7Y0DVc0wFBRpxWtkipyJN+Tb
	 Q8BOCc2uJBKSCb2yX9K+RTo8esuCmCMv45BeJmEkrVky4U7nf/UJB0O+X2yejpUbQC
	 ZPLgpbc5ajkNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB13CA5FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179109003369.5360.3673657174301922252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc39edea78815a68af1f28f052a661c4419b6a2c7dbd26e8ab5662dafaa3562
Date: Sun, 04 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791090033
