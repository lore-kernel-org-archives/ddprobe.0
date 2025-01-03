Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF5EB1D61AC
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735902954; cv=none; b=dNcFfJ6ZH7G1ForZWSV+t5wMXQVujILyx2HmiKvAiv54C6PTPcq/UJyitHlAq0wCP0YjPyGLCWHHoiTm5r5ldiPhDrovziweJQmwev232m2kRX4c9KBGRdN8jQzW7kp5YafHTxJEs0y12eHbZWkTzHhtDD6OvhiB8ENDkXGZFxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735902954; c=relaxed/simple;
	bh=w09/t21KakfbOxvPGKU5WC6qqkFIXtkc5iVIg347EUM=;
	h=To:Subject:From:Message-Id:Date; b=kuvi1omQxkHf9hLHrX9sCzrtoSbD4waYWcu6VO0mr49yLwogg2PBWXF+AABkE8X6GD8tFiLyIKiSDTJreI4Qp4Hcic8y4rpBDTBnvpiY2ltbXPGzMMLM7rZ/ExzsIWvjK7ZfRHZUdRW78UJqdbvxYUrB2eSGtRzafd7h2ID+5A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dh/2Tcq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dh/2Tcq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EABC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735902953;
	bh=w09/t21KakfbOxvPGKU5WC6qqkFIXtkc5iVIg347EUM=;
	h=To:Subject:From:Date:From;
	b=dh/2Tcq9AdpZ/jeKIPa9ZBx5hVHSdLBeFzdZw2z7ubxUsNb70O9HvnZuvoRbkDCpw
	 58CFRR/UWdfT082sUGQbLabCzOV6racJHcfGT+Kuyuf3tlBSl7FQgTMxgbl3woG/Rf
	 kAN22uqu9khW+J94R947HxCjQekOb+tZ1B5M9+7VAbgyyY3sVHK3Ounec6QNDFaagz
	 RAmp0sEoScu1I92EWIgc7qm/KPL/Q4JMPdyjXHfom3a1rrw+01FqqOBWcO5C1LXUBL
	 1AupUgU82tBlLnK08dG+zZrOGWXq7fOCUHSTzKNj010WPptsE9QuryMo6CNEnQ4Wvj
	 7vVBIQOtBAdZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96730E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173590295359.14578.16085913991738181163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e971fb40b76a9084273f15d7a870f44130c861ea85fed9d451619f857037605
Date: Fri, 03 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735902953
