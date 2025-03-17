Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48755218AC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742192994; cv=none; b=P3shLW5m0dhr30K4gCO0S9bdo6fKYotyGJNVsgvog6vNJaJFp6+nqC3ucEo1WQyJEkyoQz8Qt/VZbibAYlW7cyMsKsVuhOwlc2oOaoJXsQLJDw100ZD2+nR40nj5l0uG61gA4V5xyrKb3Gwx3BOxU1Xcjr+q5l2rXncYBGNmqjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742192994; c=relaxed/simple;
	bh=ICZEvX/VpuU5TTX1RZBPyYPWeGZohlhywoJAq26mq9Y=;
	h=To:Subject:From:Message-Id:Date; b=bWZTmFfvzrgPKWfcGaNRfBWcPC2unxlWhgqLHV8sePC3qGqYLsitMeOdbmey4CLEC8ZUF86f97rpOUmyIjSPT8TEenGH3JSljnw3IU23atmndpb6eVANCMLmZm2Mie5bRJyo7zfGgBvootwf4FzGmB5TEEvJu4spOGAVnbS7+k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIhUXd9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIhUXd9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28A2C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742192993;
	bh=ICZEvX/VpuU5TTX1RZBPyYPWeGZohlhywoJAq26mq9Y=;
	h=To:Subject:From:Date:From;
	b=rIhUXd9nkZ/ldjeFlPeMC83dcYCsleTHCUzTTODOMoAK1liIlRzzdI7rOhOoW1RcJ
	 ozoQcvEy6zKLp6NXgCzPPLuRJsIjssYPAsfbWGBFkVJ2+2/qPQtrlDz6DiqbrCKSiY
	 X4vvwb1riVd3uiSbX4E6CwAWUS3r+bOKvoI3Oaip85BG9KOmssw5glHVxxhPmAL4+8
	 QxjvwIDL/0b20KUTXGAS/jalGlqc//deompviXAcJVdLPKNitiUFpOJGmm5N5Rm7Sm
	 D1y6UIGrsnuB6WPssJuyE9gSWOYW9jU5llec0pRY84cOJ7HYwsM6X+WPypyfFELm3s
	 UcFtB/h97OY9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE56AC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174219299368.10152.8581255505946434494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f33800a07a2d248bf3a579f7f718afe77d7babecdbcfb58c8a6d41c80a4cb3f
Date: Mon, 17 Mar 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742192993
