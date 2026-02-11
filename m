Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22628369992
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770806694; cv=none; b=Q+PwTPQH7SEL6V87Xn6hk58ERbOY2ak5JEGf42aMQZpkPDoUGvrhITAjVhPvIBKKS/S7ed+ud2X7gLlfCF1EooJ5O3hVXHno+YUcL6hEi9y0PY3XB9w0tI6dn4f/cj93I1lNvs9twWY+UCgUx3oYcmMz1xVK2nmcvYVK9Pgiz1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770806694; c=relaxed/simple;
	bh=ourcSg0Y2ngZ8HHPDCvgziCalKIHMpCrgzdc1StHrlU=;
	h=To:Subject:From:Message-Id:Date; b=HdIaaCj/EQI3f6KOM+vbMwdiP453oqxnzL1XL4LCfJJASVSYYkWg0H6UTEJfbIRSEbYLREX2ljvPilSYaOTiK6eKl43W4LCkImeStIO15cIzbK9X9gdzQfhKXfmiyUb8NcmxUliWVpjNNCxptwV9nYcOzWbxtTQ9TttUzqMqb+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HoLYPM/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HoLYPM/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF2B1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770806693;
	bh=ourcSg0Y2ngZ8HHPDCvgziCalKIHMpCrgzdc1StHrlU=;
	h=To:Subject:From:Date:From;
	b=HoLYPM/frMpT15bZsVRvDVWiRL9exn0dkJpK8DnYBHXcTag7XOoleDdi0QdKVkWyW
	 xwc+K6jdNWXyah9cSMlFdliHuV6ZS0N7FxJyOvhGJPHyET8nH+ISIBYZdc+F1GlhHa
	 8CcAs7d4nALo9zrVTFbwqXyoe4C8TfuGxYG1odUdGiDxz3Az+49FjEzqpYWNUAlve2
	 o1IHjh7em97xnd3HIBMMMgx3IVEJ+fELo/pPulq6krK1X/JlnfeA1dNcm+wZCnq+U5
	 SNJCVm/C0LPoem2Q8GUvr2antTmzyZq/GqDQLYN0bKTrs+EU/1RPWyBDR85uMKgGo8
	 hrKILiC/bYTpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2448EB271F
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177080669365.17996.7441623742349938011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d15dcf4b3dcd21c317896b7b1e2ffcef08b3e60de73ceac3c7a625f5f5bb0e
Date: Wed, 11 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770806693
