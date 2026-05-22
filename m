Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F9F217659
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779444154; cv=none; b=GGgSZUL4qowDDv46zi5khq3mtPqs3sP51BwaXUqXndJOggcsReTXxc3m8KLwlCjynDszjkM/ozviUa1WqMbJ8IEtomVZ+lMsD2q/U7NSV1G2gM0OYOv4TS6mqTzjBtlTvxp8UFsTb6uPYAB0XGSo03HWLzSS6lt3XZUWs+LeCd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779444154; c=relaxed/simple;
	bh=pf9u3t84KgO1/EHL986X4IG8kfu73Bs2dBztTF5G/Uo=;
	h=To:Subject:From:Message-Id:Date; b=Myy59KCVliK9RFpYlCiEwPUVc3+vSMB+/grFk8Yb+70PBRWcmRaWphvDFDhLcMe6DS7DJDzru7JW4g11KRwlQVtCtlqrsCNUS51TGrV2ObzEnvZZ6aElSkFzdkA40Lg3N0nJWIu/nmS50vSnrZ7K1qLD5nMD1/Fwi4f1CjidrGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shR0l6X2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shR0l6X2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1111C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779444153;
	bh=pf9u3t84KgO1/EHL986X4IG8kfu73Bs2dBztTF5G/Uo=;
	h=To:Subject:From:Date:From;
	b=shR0l6X20dUajXHmsWQLvYMadrvyFl7wifO088+p+tn+6UbY21XceUs3Pl6eaGGWe
	 Wua1V6ApHJOw6A1ino20LG38fIChL3I3j4RqMw/RVf/m3jHGDxYDeznv51gZHHSFEA
	 yjvdbOFyMZx83985E5UI8m25Jfxw2aOHpNtBiCGVPq0cP43VXqNuO11/lyDQmFWqqo
	 GVfXLBBVa+76H5f58zGMb3jO9JEu7dDpMxVyAJmO7/bsQjUewy0lqMsf+w9RG7Ul8H
	 /TeWuDXHKbWEEK2O24aH67mUVJVQ5loRYsDg3TAhC7+pXSds/kJCawSVAdg2FCqR61
	 O0mA/nZ27R6Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D1ACD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177944415368.22544.2729604891845369493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e61d855640a88e1f197ca5422095d693f4fab85569f2ba740a04a03755cb76
Date: Fri, 22 May 2026 10:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779444153
