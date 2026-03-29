Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273D321E091
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774820094; cv=none; b=kWwxzErOEr9zoicyChsOZ9zWsmn/M6Gc/U/a9MlvSnXEdDhSJinNQrw3IymXEMYOGfo+fS89B9pz3/6HhAZMi66BaMSv+WVXnKyvcqcY3w59uIg8wxUTXFR70GTxc8kzLPN8NjQIuH3X7WOJDkqcBH4Idw7vffG1yncfLyIzIqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774820094; c=relaxed/simple;
	bh=U9m2XjVlD8YdalkitbMRv4UXbuyvxc7XMUi8g4SxKTU=;
	h=To:Subject:From:Message-Id:Date; b=sSPZ+aHY12CwkXtMpbgsnmRahLxt+YNna5EaOd6lRdcv4vbD2uz4j4RNf7fMkeAr3xKgP56kawQb1fWxkuWn4YNvbily6ZqGNft6nlUwoOhyRf4lbwVFS4BXgzrvcJSfhwmspCN9oYBKipwE6W4koPgT2nFkA7dm3tZSuFRBiHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbtXDo+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbtXDo+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ABDC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774820093;
	bh=U9m2XjVlD8YdalkitbMRv4UXbuyvxc7XMUi8g4SxKTU=;
	h=To:Subject:From:Date:From;
	b=rbtXDo+Ks8f3J6mrk47Q/zKEhUujsZMWRFdVN/84NwG+DY4cEi/5E2pk/T3PnVTzI
	 kI9f4mtjbLXEeLUPtj4CRZy734cOGdyA23LuHNjlcf1yXHq7Sp2zKHe7PeI4RY8Djm
	 1TJOGS74VCIGICJTQ70XSdAph0vlBhpxm7W8iWHAYF1XyItnZK6xmtP7aQdlqdX6ju
	 507ax5jqoYGqatN+X145X6rWAZPh+kF/cLm5u7uZv+ECDI1PC1hj9tYgOoJCnHyK/g
	 WQ/fLJ/1V3ksT+Xp1STMdy/zXRA9RtUH8uznppC/uuxibUfyPgZiBxZrP2Vud1mDrI
	 K8p/HvRwa6gpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94941FC97EA
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177482009358.5770.12123481474236281624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 699b7c80ae4b83b0231b6432e783dc9130f6a7c726b84b96d77b7845d85ba381
Date: Sun, 29 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774820093
