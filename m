Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA86266569
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745435395; cv=none; b=rKCvx34FA0iZK/A5ni/Jo9Dxu6zfndnTwvoEReeB9JCNCw6pTlFQoz4KWAposgEtuKItwFOFUFTAiJVIP86X+ul6b01hI1LF+GqhHpQNZFE6D7JOlUPdqXZwOrDT+m2VL72OT2Ktb17UWjuFyV1tghldIk/K/KHKAyjgMebWAeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745435395; c=relaxed/simple;
	bh=5iys0rGyKFyFilxxOPnFqF4XNVps43zROyHg0ZeBD0k=;
	h=To:Subject:From:Message-Id:Date; b=RLImALbrRYuzHFBVVTlPipuz0ErK3r231qv7l7HvvTPtCtMrtsvL5dVMUNYZ96kixIhhIYKfVvvgIPlLSZi5nuRCRd8Ry0OrXBR+WqlSailHeLmmyZvvTsNw/DE7X3Ub4s7H2TX9/JJygq4rRXzIjNFGlBDIJW9wpqAaCCjYDJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5PpJ/ph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5PpJ/ph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3630C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745435393;
	bh=5iys0rGyKFyFilxxOPnFqF4XNVps43zROyHg0ZeBD0k=;
	h=To:Subject:From:Date:From;
	b=Q5PpJ/phmQiuJqNpskiX7vWANfa43JhqchtYzctIWY4fl7abBVpPaAN51qUch4sF3
	 uWHN+9a6AyN4DIxIhmZ8IuDx8kU7fPxHWEE2jO5BXnVZeYMnn5zSLSuCIBibhlWuda
	 StKwsjrFXXFKwp/h4ZjMVhdhVhokoGjnGYmaMA52aso7lf18UbsOZ/0PihuipFLuZ3
	 MLuLTzTrPGRVKuv8Qp7nvu5zfdBtMdOnfLXW0qGvbi2j7DpguHhJGlpCcX6UfFw9je
	 rowsMK09App/xbGoPo+LIOAlO2te9kfQ+7HKV24NGz6AlEFaDd0fig89kd9adI84Om
	 htxF01hnFAz6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930FFC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174543539357.32450.12253582357021287856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3681cdaeb6ba3c39f762cea41cfcd48fed7154795175ce452b0d3168f47f5193
Date: Wed, 23 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745435393
