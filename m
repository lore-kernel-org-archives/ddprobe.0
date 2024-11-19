Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347361CC890
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732021554; cv=none; b=J+IBsi3oTbr16M9Lv3R2kiBhZTo0ykkYEvLf9BQyIN4CR49FcvIp/0BZYOTYw1kiB6OWRizTQKt6pza3M9PjLQK8cnzdos0cu4bMmsHxYVnbXWy2VllVo8sgVevf/gucr98oQx8y2LLZG3bBRUnMwqxAirpA4WAM+ldc31A/g+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732021554; c=relaxed/simple;
	bh=VAtbmCxKukQo6dVzIs0OdFSAl3tZc5SDMUo9hy/hAJA=;
	h=To:Subject:From:Message-Id:Date; b=iLGBH0t2IILrRBT/Z3rYErJ/EDMhIpr6vdP/HwAQvBX+f9pqq41T0iEsCJ5vsczKcANUMdt0sOEWfzdKPYN5F//oqrgNJG3k/seZgcxH5BqeIXwPBWjv9CBcd2XUEtIq49xAXdsneEoa189e9Dsiu+Ric4fg+GUVDun2WjM6Uyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqOUUTyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqOUUTyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6E8C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732021553;
	bh=VAtbmCxKukQo6dVzIs0OdFSAl3tZc5SDMUo9hy/hAJA=;
	h=To:Subject:From:Date:From;
	b=bqOUUTyniATuU4a0zM+a/MqiTU4oi/jldKAuBzHVVJg07tBXkoiEVkxDKuCS8nZ3Q
	 Ky9ChIyfS8B65dJEK5xS3rpq0QFLhmBFAuDJv2sClfUxresyVb6MCYrVgcW5cBK72d
	 jMP+Gcrtm4RYD5gE1JAP+zSRpCzUqGymlHKSYDqViCHEN8T7kx34QUJU9YZXxeEapG
	 0/At3xaYwK6aSCzqOK0Nx476GfRZXbKwoE0VaiU/9l4baz0ZLbWgMF1KLtags8j9Dv
	 QCyWahekmwsPVkIwAuWCdMJAL4f8LXnFa43EQqxQfsVSK+wjhumkZ+VCL0k03PF3RN
	 I9w+l7DniyGRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F95D44159
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173202155361.18407.13594487231203219718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f137f353c6646eee16e0fcc3432811970e68598f1720b16c3c33285d770bcc52
Date: Tue, 19 Nov 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732021553
