Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5B53822BE
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791584434; cv=none; b=C5kuB+FR2R0N0B/Ma4havaojk0Gz/xf2ArXrDBwq/1/m7xy+TPQ9+aJ5keyrhh08W5YWyJdsAtoF7a53x+eZvL1KpY7V+Cjmps9JG6XCXhUN0pK7+LGeE2nn+6TcxgfdGFjMQ+/Q58tez0DX9FBic6erKY2/wyhFBCtrVzaJahs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791584434; c=relaxed/simple;
	bh=KZ/7u2GrY538l0fmPn21B5yrcZ1GIpjH/nCTf0iI1Xg=;
	h=To:Subject:From:Message-Id:Date; b=FP6CrVQOJFkyaFwS1Yg5nRdK+Rk+EnK/IEcWAOxLBS0QBtEup1lEDQ0M7eDhUjKic2RFwf4gBmz020TXRQ39phl938wkjTZ0W9gCIbIbA+GMeGXotqOJPMl4doa4IvPlEpiTvc1HRBObouwQNSoFgc8xusZYTF1AER1a9USUkO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBNWV86y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBNWV86y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1334C2BCFA
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791584433;
	bh=KZ/7u2GrY538l0fmPn21B5yrcZ1GIpjH/nCTf0iI1Xg=;
	h=To:Subject:From:Date:From;
	b=UBNWV86yC1HDDG/3ua0Uy2WGOMV0Fn+i8Qi1pKWqGDOSFZJorK6yZlLZBlcZ9xevG
	 NmOQthTaIDXvplbS02dEUTVClN958X3fdhKv3ex41tOUmmTZ7iqi/eEs88Qtwa9uTm
	 m+xLvL/KFFrUe1QsHTwqRyrzvCQvze6tlUZRZP8YlKNbLEAhDeltLbgiZSSvtua46v
	 Yi6mI/4ald3+eX8bio044AKJb6xNLLT4SbHLbBRsS+TewPkHs3uomhRDLpJR6F97SE
	 tw4EPdqqChYfmqv48wy97h3N7TPO7HGJInltTpPwqk7xeNd52IZn4kyJUWgBAshsty
	 XdU2mXwe0lTUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB73BCA9EC1
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179158443369.14173.6342648301790393517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dbba7e1a425a7d8847ecbf20bcb9854c20e00fe5a4ed184c65a13aa46d1290f
Date: Fri, 09 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791584433
