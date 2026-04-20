Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6BD2B2D7
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776719854; cv=none; b=Krchd3X2WRHTUb1AcYAzWOKnCAvAYyTIDZDZhxmi8bMiC+UP2SMnmac9LkkfL8qZX3958d/5J5oOSsbaE5osifS4NbHzqHWYykgw7n6ZV2Vf5xFu2h7+0S+tN9mx0SKc6C/TNhhLIoo+s0oD2hSBV/9xHvxhG8L7NhaMs/21xCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776719854; c=relaxed/simple;
	bh=FM3nMKTbHsFWLIO8u/USFYEBBqaMNAUxvojmYcYYsIE=;
	h=To:Subject:From:Message-Id:Date; b=hfbKlE+eiCASPMOWkI6BlF3nmOFP7Ovz4b+X6TQ+LJR520HFZkItEm0HH/UmMgAbpByLLFOEg1PkOYHXhdsIsD51Wkn4tSOHYbhMnNaNOfUOaQO0rNIbDyN0wO+2bO0IfuR5yEozbSUJdZpKP28s7ODV04MAmthvmXllMlxiByA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMeRwnbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMeRwnbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA245C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776719853;
	bh=FM3nMKTbHsFWLIO8u/USFYEBBqaMNAUxvojmYcYYsIE=;
	h=To:Subject:From:Date:From;
	b=FMeRwnbVFScHWBewqDwQ3Izq4LosWrHdHw+3DRb2nNEs9OBbs/rbqiWR9iFlAgz/N
	 ESeixEEvGOcarfEoIiDqMsfSxiCGzm1qEqpiMVQJTIhpRMnxT248kBdEtW/An0K/+i
	 rsVZZhCvZJjn3PAQam0amLZNglWCHs4OxqHgLepvl5ZpxqM4Yt0h2v2OBEPJF/+P06
	 avdHwuldQEZp5/6q6pMI9L90Ww+vVVT4M4G4bvHbjyjof6lq9iBPo+NWVXjSD/j4R/
	 MEgKa9AViNiiiD3EVZNGCBwKmCvkhqWzAdKP4pgyO8on7wxlk4XJPtGe70dR7Ovp1P
	 vgEXuuiTWfCZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC23F5A8BC
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177671985368.11952.13175975037252643271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b46946d6d6ca08e8780f1fc5de04bb7b1a6fe53b126b3bc0e440766211baf7
Date: Mon, 20 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776719853
