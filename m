Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AC114386D
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759693194; cv=none; b=UlqJmMkJNjUMVxAo6e0w+9sf0irPz91SXXCwTNTdc4HW0k0PEM5qiGTzu3qkimHZJmL2GHEsTc0Q/tNimnYLr1qkQ6AcIRvDxlZ8QfAb9B5Yw1bmJrLoTqEuZtVZneamoLWnlg18CgF3NO+CGYTykbViGZftrzDMEkrXTT4K6iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759693194; c=relaxed/simple;
	bh=K5C9MOdD063gPHfTY9tbpHpwHJ9j0leCLPfX8yETsAM=;
	h=To:Subject:From:Message-Id:Date; b=JwkptDVjiMm9r+yZYVil4eP3u5UWSSY6gy7PRTHnfzRKi6cCxXQWKviEnshEsQlN0WD8hfz3cVNtyhGCnsQ8LSy02pDrrxIb7iruXqFEetvimIFNXUB8RVycC11O8YbpLMAkDplX6Z7UiSScJA0ozliiTbfGKnzNQ4msBXS7no4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcjwXVcR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcjwXVcR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54DAC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759693193;
	bh=K5C9MOdD063gPHfTY9tbpHpwHJ9j0leCLPfX8yETsAM=;
	h=To:Subject:From:Date:From;
	b=QcjwXVcRhwcOQA7rIJ6SJ6u6ZAEAPZ3YlzCab7ZBmZOTOwdlzcXuHLvmgzFS5w1FJ
	 /YOSMhPn8+grGw0KMXGEq5/ftb6LFGIAxDRqEHBTtCv/kohSDB/qieuKLAjVQzewLx
	 vA91ycanGYl7noSBANZE63U+RAOYf9lLH6g3XhYjeH1VQWNaLQxqxyQ794co1q+a3r
	 3YOb89SjukML9ajduwLPLlcFxvrqmyN743fOsZfuQHLzuFvmlqYGWCu2Z2LV2ny83F
	 kp1rZITT/p8L4e+FW9g8vygp0VTa+YOptGxqbEqRfYPucWCut3ZyGIihL7RsMS5Ts8
	 O1esvHEyqFYhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91814CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175969319357.9336.3588108242766719699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47638788a0878f9285df749ff4e8d7f0a354bfa4f32164daddc59ed1ea753ff0
Date: Sun, 05 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759693193
