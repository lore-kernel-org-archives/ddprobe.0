Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357751BC094
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730392554; cv=none; b=psmpzYDzbhNWU91UREe1F0PKwAUiwTeDWFXurdgy41zfk1ccK4SfFElkKX1R1MBuxaf6X1XqRA7fSL5FvEo5OKEGEbK9B/JvQNDv2oaFXW/k4NPoODAE9dwc3P5AVc7qf1QIvuXSekUczm9aCV+fssqOkScu2qOQZtcV+LvmF5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730392554; c=relaxed/simple;
	bh=nk6ytUCJH9mBfL9pZD/zWAS4hCd/TQHf8IUXKbzJe/o=;
	h=To:Subject:From:Message-Id:Date; b=apHmehFIDNOUpmEyp1G4YJ8zBvYxImlncaeGqU0W6qFIEXKT+yTkhdkcA35Jl+/Nr2ZM+9tIF0Nq1j/SDdGAvirZkeG+FW/1isywaZKFpRBWRsSY0Q7n71Z6qSmbnx8o3hYWSwpEoxJyR1PyJ4u2xA90Fo4/p3OV+BmGHoVOQBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWOaDUxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWOaDUxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B1FC4FE10
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730392553;
	bh=nk6ytUCJH9mBfL9pZD/zWAS4hCd/TQHf8IUXKbzJe/o=;
	h=To:Subject:From:Date:From;
	b=gWOaDUxdgy2yiK7EW3IZXQDgKoGrhUiBETbrQtzbWNXyIO3CZGeflQCHRFNbhS/TX
	 ppCNzr1o3lFoCJPHTVXXc3Ig4wBkrGvu685OpURxJd7i9bRSWnZukZ10cpbxFeiQOL
	 p3/6JQRPwGhfLvuCOB4tqILYyH1rQ3QoviRthYTBNyoyF6qcBxXndqqZ0hQCI5qo6/
	 zom2qMfDiG0I6mQ/T3hb2dgBPtyS06Jq1IjUeuywo8OyLpX8jAjwAyEY3yRer6iFGo
	 QfK+oQRDB4JsS3BFZAGneTQnqsNx/zH+ootRXE3Z+tzG7WLKhc4mxYmAlhbsdTW0Yy
	 vFHkfL/2BzQPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8029D767E1
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173039255367.10366.12418975381126817803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478bcd9a8808b9288ed60e438e9ef5f5969a1367a572049b431ee4a71fa8a472
Date: Thu, 31 Oct 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730392553
