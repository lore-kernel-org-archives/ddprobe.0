Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178633368A7
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772577894; cv=none; b=ZwEkLvKDrLp3BDZqKLwsclNmI+3ZANYnblhevIOWQO+jqHkdVIumg10r/z58EMCGuERUUxL7TxAeXfcVoWYRQ/ldBIxpQamsKIRS3ndJ2h2+iu/cw/oN8UFxOGSfc/q6w3IQDLiRuvqJ9NyeR3fjtGIiQ5p3YykASnge2v7txFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772577894; c=relaxed/simple;
	bh=GmnHc2t1IEQeGUj0mYFTgh1HM+7Pz8/kuj9QjYIsy/o=;
	h=To:Subject:From:Message-Id:Date; b=L5PLoeoEiiodKcwA6sw6G23YGkPYGt5hb52lVCrIKrLBEa2iWSS/f5Kc1TGZS77TfPEZl9eqPGqP+4+GxpbFBX2nZAKEuGgQOCcK5WZHvIqyw+7Fbw62WpRyl5JdEE6vuZXHGwz4xBhUOlffTdnlf0t2vEpk3YQ492UGEKw0c6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0hSgqCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0hSgqCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A42C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772577893;
	bh=GmnHc2t1IEQeGUj0mYFTgh1HM+7Pz8/kuj9QjYIsy/o=;
	h=To:Subject:From:Date:From;
	b=P0hSgqCV+WpDBgO0v1Bz0z4lcjN540sd5D8copoUXd36x7/ND3XIk79HuhNnToaJb
	 wBU8th2FCt6LXq0Un0NpW/nb/Uf2Xu+shLJgRNnghabaqZt/m8vc5KkETYTlUr0qlS
	 abGLyc5T41nTRjzwNQdd542m1mv/c+PGEl776MkzlQEVwnqeZLuy5S/rdDiv6b+1GZ
	 NTZ1MHre/TbHIzuTbrWsZVGTu3uhqY33kWVuwaFb5sRunvDNsc+5Q9YP3SJFx+zhm+
	 dceP0sjDDr67IDtmFerK2auWH/EDGOL4xzdvd9MYSQ6nL2rYhEbhtUvf7E9ioH7y+K
	 frbSpuF6YganQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A29C5EDEBFA
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177257789365.16406.11509407787397588119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffcf41a86076544f4b82589b40a48058536cde6bdc6f595cd00e71bfb6ed2772
Date: Tue, 03 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772577893
