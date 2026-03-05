Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9FD3644CB
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772752494; cv=none; b=FIfqhTTgn8r9ebnjiEI/+eEZWfcOWmy1l6SVsTXdjv2CR4xArrNgiyc4Vu10lp+7CUdzXMIQEp7caEfze9glj83BhRQ/fG/Gv11kgNJUWW4eDLuOmCI+J6vbf+yX5JWaK9Ool3oG8/jC75+NJ3ZNIpdV4FxHxf7eVu5IS2vpxho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772752494; c=relaxed/simple;
	bh=sC9IdavDoFfmivW0YYN+Lf7MSIXP9b4vFjEUww6821Q=;
	h=To:Subject:From:Message-Id:Date; b=ZICSHKyQlHycmXoDPjA3khLzUYrK0XdUUGc7G6YMkfBbKHCvSEqAKmg6hUB0lg6rjAX+8ErmKBN7k5tdgDFVhw3oM2KRe4GqipD7iSlX31fzYbAsOC22AIrlUl357PT9tQI5u2S7QGtr6taqJJp//W+4atZ41IOyOSnETMQJdVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXE1sH3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXE1sH3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A406CC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772752493;
	bh=sC9IdavDoFfmivW0YYN+Lf7MSIXP9b4vFjEUww6821Q=;
	h=To:Subject:From:Date:From;
	b=MXE1sH3vJ8IlnAJHXHdZZbWN3ZaOC37ImkCF/XZnO56xvkVidp4LU5zo5PD0A3Aw/
	 JuV9ffQy8s1yscc4/18iZMvbZJvgXOvLB8IMUaMFVfNXeFjstgCN0GLns4rnO/l6RY
	 aSGKgVrgWAmCr9XHfGX7qWQbpnG1XhrpecJgCM76yBecKjSfVXnPRFDvtmbCf4QdrS
	 y2vU/RLW1u4wpkuu6V/vZTpjXxYc+TVB4vMyTIKQCbA1WwPNclIrx9Z8ApcFItklT/
	 VcJeHGiA8KdBUF0KQzXwyzQPLEmqYWd9V41nXDuKOx/kKeOf0Vmmcns37NhA5YtmoV
	 ExudoxnDkb0Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F2F513E6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177275249358.27750.15191426063461286970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c10fe96c716a8d825cf0692684149485d1eee47b1001e82512368524064806
Date: Thu, 05 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772752493
