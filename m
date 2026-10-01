Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF022D12EE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790895635; cv=none; b=WEKcn6PU/9mYhotO0JNtV7U0cmi+U86H75MVXiRTZrlqb+Vg9YShauQn/ALAn/2WAenZiTxr8OxHo5lbutkjEjXCRFfrSitL6eCbkdK0oViNQhS+e7FH1O7deotakVN0R7tJ7UEH2J5aZMGxOqBZuB6KJFbNYVbW+cplLBwGbSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790895635; c=relaxed/simple;
	bh=wjgp8jXiP+i+c5Fc4ggLu6fROJ+aVVVWiGrXIZj4/JY=;
	h=To:Subject:From:Message-Id:Date; b=sZLzTd68w9kiWw0xhDABSQu1pnnihV0AjMoDcCadyXUY/yF7drSqC/VK83Z47k2Bm1iz5mVQ/Q/8lBSQliSEO8Jg+3LfReJxJ3Xdk9T1JxokUENU9YCsk6/Jf/cgn/8W/JsAaz20nVHT5cXRroFQRmbmQCs0IcoAWrBok78LPn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIARu/Xw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIARu/Xw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF77C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790895633;
	bh=wjgp8jXiP+i+c5Fc4ggLu6fROJ+aVVVWiGrXIZj4/JY=;
	h=To:Subject:From:Date:From;
	b=RIARu/XwdsVYeo5IWDb0NkmuGrAJlBpYEjmFyhJge/oCv/dVr93xBi4lLnCZL8M70
	 6YCs+M+0PDcbu8Bcb1lrwzIsHEY+7s3ulRuwYdVTjolIwckVR5br/NQ/hyB2M8AhXA
	 x7ct82vlEbbLvvi9y4mgqil11YwvbL4fMMVJ8EleKc5c6GG9i6DQ1oPgpW6ROn6M7l
	 ZjYyFZXKEfeF8TGI6x4N+WiLDSvp8/5KbTIn8M3b7jRA28OIPoL0Va8krMVw72S2aS
	 3uumYlhmw0Oh6xq4HsW64zcxYvv/rn1PFspHJWjOPtDxr1/Sxz+pTqnhw9LUVQm7mv
	 fABq+NfSrjQPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D16CA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179089563368.7905.15226013181547916197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b438dd1ff69f7e685cbbf488b73f3ba0f410fd9bf7918f7123d52ff6a06c5e
Date: Thu, 01 Oct 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790895633
