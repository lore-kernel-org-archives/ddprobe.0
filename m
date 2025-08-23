Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A032CCC5
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755911396; cv=none; b=R/fTt88K1VLjs+NuHyaTp8rkII2UzngwccbcB+7ZLBzpQZQKTkKJSklMreHP3Asw9B2E4Eql9Tq81LxvaMFGm69Upto9pP8qIdTOmiMI68GronfVFxj/NYh0lTJGSfjtOUPGEDZ+CHowh67S0i6JV11XDsegSTf7CUL9P6SGLD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755911396; c=relaxed/simple;
	bh=sz7SMV3YlGFDXb8tlOc/IYTzc/RjuNX18Y3L/C8brUg=;
	h=To:Subject:From:Message-Id:Date; b=IMPfphBlDJIPyk26vhX1y1t/r8QasUznmVuFW+AHhDWztfzmku7XJHCgG0fETyBLdm8Q9nS8sJBtMaNJ0DUzlMLCKr3G7cXuQ2qsiMQYX/5GI9mWEiOo8ThuLkn+sjqjRbGUShnKCm2ICp5HI0ES20zRxVYF7Wt4fc7R97kqeQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWofP5KV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWofP5KV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3658C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755911393;
	bh=sz7SMV3YlGFDXb8tlOc/IYTzc/RjuNX18Y3L/C8brUg=;
	h=To:Subject:From:Date:From;
	b=KWofP5KVd2jkp+vxvfJlSeRclINo6WTYlWV2BO229J5i0sUmF1dYh9F86AW3cjorr
	 Dwp+gOovHfsXkGWgh2cI76VTkBXHVcbVEyqKiP076M/m9+wps+DZdiwqXmMY6uTMJw
	 m7bFD/2AAkpxAfmpSJdIinJFcwjM4If/aRNpbdpb1qXX4+CYrWzoPpGzTJBoJPs8gO
	 Nnr2G/28ZJdCxlhg5XabqHQhXQAjWU3BHbR5E12LULt5SBc40ENGqg8zqjSXgufxda
	 v+yWXUOfeR6b8/DS8qVELCe5nGNyG9I/5wJuQtFMVz+DcgO3Fz+U06cWujCU9ZITFJ
	 qdgxjsoTF80NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919FCCA0EFC
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175591139357.22890.525358712829935277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74c4d24f0a30a04ed1490b903352c11194856b25258da9b9b950dabd1970213
Date: Sat, 23 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755911393
