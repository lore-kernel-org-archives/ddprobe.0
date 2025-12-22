Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1C033A9D9
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766423033; cv=none; b=o88HO8DoAu7dnxQzB6JrdYWwcBBgSDAXyoiagfAfRovMAfJXTkcNhHK8SG4ubXOcufDtdsmyN4eHP58uajknd4YLhecpEptv2CluADTjHOWauNLDGufN3Iwb0eBX0t8vwQiayOY/gjCpFg8cl0eUjdGin+i6rIljsb4TLZBB5Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766423033; c=relaxed/simple;
	bh=96qamX3rvp8KIOJ45nrzKWOX0GK5znbtM59RU3UImQo=;
	h=To:Subject:From:Message-Id:Date; b=CkvNiVJamM+DqpP4K85OgGJV7bvOxyVBWGZwuHKNc5ndwes9JcQjNpQXea9sTpCAj87mk++GPq0WBDTJ/TnNciGx62zBgXjxcBNZ35sWc03N0OdYi1xkI/nnjJNhUgAMYgPErtdM7SUPv0DWplvv2ctHPOANlm8p/BmchpW2JyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQMJhM8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQMJhM8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4DFC116D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766423033;
	bh=96qamX3rvp8KIOJ45nrzKWOX0GK5znbtM59RU3UImQo=;
	h=To:Subject:From:Date:From;
	b=XQMJhM8c2UasFj1WPAtGl+BdkTVUWXKmdQO9zzwYdtbAqHVYHV9U1XapU7O/4Qxr5
	 2v85dwApjFjUPZaV7D79mRmAIugjTYl1gpe7vvNMDo4WrIyPWHgxMaNFV+maMgsd5V
	 p5wI7K+5Q2qgiGDSzJDAMd1NUotvf4ctdLRN061i+OUauvK6WEBZKgXSUWRWBXhSkG
	 x6ou8BHhQkR+VYQ7KqSosfGFT9ncwF4BQvrs0WlYQVdGQ51gFnFSHAuh3gslUVI2oM
	 aP649cuiuPywrG9U8Iw9F3WVZuD1yshB0siHsSLDCVB3xUWXWg2KDeTUw/YlZExHUh
	 sy6sVKWs3YqrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91169E67495
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176642303358.23760.1215883042292562346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87161e92d25db8c479761b550ba5fb84ccbb88ba02438a3f0afab8238fe892c0
Date: Mon, 22 Dec 2025 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766423033
