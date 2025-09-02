Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FEE312826
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756823994; cv=none; b=m/ryZyYSjXU+VqdMDZjxnLtVXE4lKXVxOPc7diZEDc/BXhyE8/hESrm45Qe/9BNJOxsO7bNp+5esFs4FMmsCh6B8QvOUdgEyGURhY2dTYGKwDPMKiBIdH6KtP4TVBCgv+dCnBLletwStSFVpqpfMHDbJqR2MSMlIOmfd0/eo4O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756823994; c=relaxed/simple;
	bh=YKD/mLlyo+WlkTWgTYFWQJsifR9DgkNsCwzNbGRFxB8=;
	h=To:Subject:From:Message-Id:Date; b=TCTADUsXZg/mpAkK3Va5rfX0G48oSlW//1Pvzav8hIrHq6hyKcNgxM/U54iuamardzNH8KjfZ0Vyp2WQmBwFbx0Sx40cm+ugi1eEOf5pIGa3UWwoIsiYWKoaTOGGA8N473Bcig3blDVe3mxXywSywkYwaSqHi9LmmH2mnUDkxxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OX9moTqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OX9moTqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E70C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756823993;
	bh=YKD/mLlyo+WlkTWgTYFWQJsifR9DgkNsCwzNbGRFxB8=;
	h=To:Subject:From:Date:From;
	b=OX9moTqsOC4IDXlT8F2rYGrfckT1qf4rIKCuY2xaIe46HcKuqXVPuOsDdlpKRU/71
	 aEWpkF4tKFifa6UI9LpHiyv7oOUCQAEJL3Z+A+20exI62EAM0F6GKxPSMxmCYNlaH+
	 I2X/hIJn/KRNOq+p6EuOLjAjn5nFUTuPqB3PQSYEIxo/85bbgp80ESFY9T24DXMZNK
	 Fu4g+J0MbHIcKiviwougGQHc5JorMIUaj0llxUVup55UO+GGEbrQasrEDgiTm5E8xn
	 o040b0cyNDoof2jcxZb//GXxydkCO1NKGSDpZbHI12QCFAQc9H6L5x2jbdiD8EScYl
	 ex0shgH1ikETg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC9CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175682399358.3133.3902588082767212961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538474419eb48e01863b9879cbd6c1f16e5aced31ee3951982017ae30954c638
Date: Tue, 02 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756823993
